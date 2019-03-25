# jon klein
# tdr gateware

# this is my first attempt at HDL in awhile and my first time using migen
# copying from this is probably a bad idea

# mit license

from migen import *
from migen.fhdl import verilog
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
    for i in range(3000):
        yield

class TDRController(Module):
    def __init__(self):
        # external inputs
        self.comp_in = Signal()

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

        # internal signals
        delay_state = Signal(11)
        cmp_voltage = Signal(12)
        cmp_bit = Signal(5)

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
        uart_tx = UartTx()
        self.submodules += uart_tx
        self.comb += [self.uart_tx.eq(uart_tx.tx)]

        # create fsm
        tdrfsm = FSM(reset_state="INIT")
        self.submodules += tdrfsm

        # INIT - wait for DAC to become ready
        tdrfsm.act("INIT",
            If(dac_controller.ready,
                NextState("WAIT_FOR_SWEEP"),
            ).Else(
                NextState("INIT")
            ),
        )

        tdrfsm.act("WAIT_FOR_SWEEP",
            If(1,
                NextState("START_SWEEP"),
            ).Else(
                NextState("WAIT_FOR_SWEEP"),
            )
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
            ).Else(
                NextState("WAIT_FOR_DELAY")
            )
        )
    
        tdrfsm.act("SET_VOLTAGE",
            # SET VOLTAGE TO CMP_VOLTAGE
            dac_controller.dac_a.eq(cmp_voltage),
            dac_controller.load.eq(1),
            NextState("WAIT_FOR_VOLTAGE"),
        )

        tdrfsm.act("WAIT_FOR_VOLTAGE",
            If(dac_controller.ready,
                NextState("MEASURE_VOLTAGE"),
            ).Else(
                NextState("WAIT_FOR_VOLTAGE"),
            )
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
                If(delay_state == 511,
                    NextState("WAIT_FOR_SWEEP"),
                    uart_tx.data.eq(cmp_voltage >> 4),
                    uart_tx.load.eq(1),
                    # if this is the sample in the sweep, return to wait for sweep
                ).Else(
                    NextState("SET_DELAY"),
                    NextValue(delay_state, delay_state + 1),
                    NextValue(cmp_voltage, 2048),
                    NextValue(cmp_bit, 10),
                    # otherwise, increment delay counter, reprogram delay
                )
            ).Else(
                NextState("SEND_VOLTAGE")
            )
        )


        '''
            python code
            for trig_offset in range(NDELAYS):
                delay.set_b(trig_offset)
                # binary search trigger voltage
                cmp_voltage = NDACS / 2

                for i in range(int(log2(NDACS))-2,-1,-1):
                    dac.set_a(cmp_voltage)

                    if gpio.read_value(COMP_OUT):
                        cmp_voltage += 1 << i
                    else:
                        cmp_voltage -= 1 << i

                sweep[trig_offset] = cmp_voltage
                print("delay {}, dac {}".format(trig_offset, sweep[trig_offset]))
        '''

        # return to init state

if __name__ == '__main__':
    tdr_dut = TDRController()
    run_simulation(tdr_dut, tdr_test(tdr_dut), vcd_name="tdr.vcd")
    verilog.convert(TDRController()).write("tdr.v")

