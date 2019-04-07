# jon klein
# tdr gateware

# this is my first attempt at HDL in awhile and my first time using migen
# copying from this is probably a bad idea

# mit license

from migen import *
from migen.fhdl import verilog
from migen.build.platforms import ice40_up5k_b_evn
from migen.build.generic_platform import *

import pins

from spi import _SPI_TX_Master
from delay import DelayController
from uart import UartTx
from dac import DacController 



class RefSelect(Module):
    def __init__(self):
        # outputs
        self.ref_sel = Signal(1)
        self.trig_sel = Signal(2)
        
        # for now, hardcode for tdr mode with internal clock
        self.ref_sel.eq(0) # TODO: verify ref sel for internal clock
        self.trig_sel.eq(3) # TODO: verify ref sel for tdr

def ref_test(dut):
    pass

def tdr_test(dut):
    # let dac initialize
    for d in range(200):
        yield 

    for analog_value in [100, 500, 900, 3100, 4000]:
        yield dut.start_sweep.eq(0)
        yield dut.start_sweep.eq(1)
        yield
        yield dut.start_sweep.eq(0)

        for d in range(7000):
            comp_val = dut.cmp_voltage < analog_value
            yield dut.comp_in.eq(comp_val)
            yield

class TDRController(Module):
    def __init__(self, plat = None):
        simulation = (plat == None)
         
        DELAY_STEPS = 511
        DAC_SETTLE_CYCLES = int((12e6) * (15e-6))

        if not simulation:
            # external inputs
            self.comp_in = plat.request("comp_in", 0)

            # external outputs
            self.start_sweep = plat.request("start_sweep", 0)

            self.delay_sck = plat.request("delay_sck", 0) 
            self.delay_en = plat.request("delay_en", 0)
            self.delay_sdin = plat.request("delay_sdin", 0)
            self.delay_sload = plat.request("delay_sload", 0)

            self.trig_sel = plat.request("trig_sel")
            self.ref_sel = plat.request("ref_sel", 0)

            self.dac_clr = plat.request("dac_clr", 0)
            self.dac_cs =  plat.request("dac_cs", 0)
            self.dac_sck = plat.request("dac_sck", 0)
            self.dac_sdi = plat.request("dac_sdi", 0)


            self.uart_tx =  plat.request("uart_tx", 0)
            self.uart_rx =  plat.request("uart_rx", 0)
            
            self.led = plat.request("rgb_led")
            self.led_g = self.led.g
            self.led_b = self.led.b


        else:
            # external inputs
            self.comp_in = Signal()
            self.start_sweep = Signal()

            # external outputs
            self.delay_sck = Signal()
            self.delay_en = Signal()
            self.delay_sdin = Signal()
            self.delay_sload = Signal()

            self.trig_sel = Signal(2)
            self.ref_sel = Signal()

            self.dac_clr = Signal()
            self.dac_cs = Signal()
            self.dac_sck = Signal() 
            self.dac_sdi = Signal()

            self.uart_tx = Signal()
            self.uart_rx = Signal()

            self.led_g = Signal()
            self.led_b = Signal()

            DELAY_STEPS = 3


        # internal signals
        delay_state = Signal(11)
        self.cmp_voltage = cmp_voltage = Signal(12)
        cmp_bit = Signal(5)
        settle_count = Signal(12)

        # create dac controller
        dac_controller = DacController()
        self.submodules += dac_controller
        self.comb += [
            self.dac_clr.eq(dac_controller.dac_clr),
            self.dac_cs.eq(dac_controller.dac_cs),
            self.dac_sck.eq(dac_controller.dac_sck),
            self.dac_sdi.eq(dac_controller.dac_sdi)]
        
        # create delay controller
        delay_controller = DelayController()
        self.submodules += delay_controller
        self.comb += [
            self.delay_sck.eq(delay_controller.sck),
            self.delay_en.eq(delay_controller.en),
            self.delay_sdin.eq(delay_controller.sdin),
            self.delay_sload.eq(delay_controller.sload)]

        self.comb += delay_controller.delay2.eq(delay_state)

        # create ref select, assign to external pins
        ref_select = RefSelect()
        self.submodules += ref_select
        self.comb += [
            self.ref_sel.eq(ref_select.ref_sel),
            self.trig_sel.eq(ref_select.trig_sel)]

        # create uart tx
        uart_tx = UartTx(sim = simulation)
        self.submodules += uart_tx
        self.comb += [self.uart_tx.eq(uart_tx.tx)]

        # create fsm
        tdrfsm = FSM(reset_state="INIT")
        self.submodules += tdrfsm

        # INIT - wait for DAC to become ready
        tdrfsm.act("INIT",
            If(dac_controller.ready,
                NextState("WAIT_FOR_SWEEP"),
            ),
        )

        tdrfsm.act("WAIT_FOR_SWEEP",
            #If(self.start_sweep,
            #    NextState("START_SWEEP"),
            #),
            self.start_sweep.eq(1),
            If(self.uart_rx == 0,
                NextState("START_SWEEP"),
            ),
        )

        tdrfsm.act("START_SWEEP",
            NextState("SET_DELAY"),
            NextValue(delay_state, 0),
            NextValue(cmp_voltage, 2048),
            NextValue(cmp_bit, 10)

        )


        tdrfsm.act("SET_DELAY",
            # PROGRAM DELAY LINES 
            NextState("WAIT_FOR_DELAY"),
            delay_controller.load.eq(1),
        )

        tdrfsm.act("WAIT_FOR_DELAY",
            # WAIT FOR DELAY LINES TO FINISH
            If(delay_controller.ready,
                NextState("SET_VOLTAGE"),
            ),
            self.led_b.eq(1),

        )
    
        tdrfsm.act("SET_VOLTAGE",
            # SET VOLTAGE TO CMP_VOLTAGE
            dac_controller.dac_a.eq(cmp_voltage),
            dac_controller.load.eq(1),
            NextState("WAIT_FOR_VOLTAGE"),

        )

        tdrfsm.act("WAIT_FOR_VOLTAGE",
            If(dac_controller.ready,
                NextState("SETTLE_VOLTAGE"),
                NextValue(settle_count, DAC_SETTLE_CYCLES),
            ),
            self.led_b.eq(1),
        )

        tdrfsm.act("SETTLE_VOLTAGE",
            If(settle_count == 0,
                NextState("MEASURE_VOLTAGE"),
            ),
            NextValue(settle_count, settle_count - 1), 
        )

        tdrfsm.act("MEASURE_VOLTAGE",
            If(self.comp_in,
                NextValue(cmp_voltage, cmp_voltage + (1 << cmp_bit))
            ).Else(
                NextValue(cmp_voltage, cmp_voltage - (1 << cmp_bit))
                
            ),

            NextValue(cmp_bit, cmp_bit -1),

            If(cmp_bit == 0,
                NextState("SEND_VOLTAGE"),
            ).Else(
                NextState("SET_VOLTAGE"),
            ),
        )

        tdrfsm.act("SEND_VOLTAGE",
            If(uart_tx.ready,
                # send delay/voltage over uart
                uart_tx.data.eq(cmp_voltage >> 4),
                #uart_tx.data.eq(97 + delay_state),
                uart_tx.load.eq(1),

                If(delay_state == DELAY_STEPS,
                    NextState("WAIT_FOR_SWEEP"),
                    # if this is the sample in the sweep, return to wait for sweep
                ).Else(
                    NextState("SET_DELAY"),
                    NextValue(delay_state, delay_state + 1),
                    NextValue(cmp_voltage, 2048),
                    NextValue(cmp_bit, 10),
                    # otherwise, increment delay counter, reprogram delay
                )
            )
        )


    

if __name__ == '__main__':

    tdr_dut = TDRController()
    #run_simulation(tdr_dut, tdr_test(tdr_dut), vcd_name="tdr.vcd")
    #verilog.convert(TDRController()).write("tdr.v")
   
    plat = ice40_up5k_b_evn.Platform()
    plat.add_extension([
        ("comp_in", 0, Pins("J3:14")),
        ("start_sweep", 0, Pins("J3:0")),
        ("delay_sck", 0, Pins("J3:1")),
        ("delay_en", 0, Pins("J3:2")),
        ("delay_sdin", 0, Pins("J3:3")),
        ("delay_sload", 0, Pins("J3:4")),
        ("trig_sel", 0, Pins("J3:5")),
        ("trig_sel", 1, Pins("J3:6")),
        ("ref_sel", 0, Pins("J3:7")),
        ("dac_clr", 0, Pins("J3:9")),
        ("dac_cs", 0, Pins("J3:10")),
        ("dac_sck", 0, Pins("J3:11")),
        ("dac_sdi", 0, Pins("J3:12")),
        ("uart_tx", 0, Pins("J3:13")),
        ("uart_rx", 0, Pins("J3:15")),
    ])

    plat.build(TDRController(plat = plat))
    plat.create_programmer().flash(0, 'build/top.bin')

