# jon klein
# tdr gateware

# this is my first attempt at HDL in awhile and my first time using migen
# copying from this is probably a bad idea

# mit license

from migen import *
from migen.fhdl import verilog
from spi import _SPI_TX_Master

class DelayController(Module):
    def __init__(self):
        ''' controls an NB6L295MMNG digital delay 
        accepts delay1 and delay2 parallel inputs 
        on the rising edge of load, store delay1 and delay2
        then load delay with these values over spi ''' 
    

        # outputs
        self.sck = Signal(1)
        self.en = Signal(1) # TODO: EN WORKS AS CHIP SELECT< ACTIVE HIGH..
        self.sdin = Signal(1)
        self.sload = Signal(1)
        self.ready = Signal(1)

        # inputs
        self.delay1 = Signal(9)
        self.delay2 = Signal(9)
        self.load = Signal(1)
        
        # internal
        self.delay1_reg = Signal(9)
        self.delay2_reg = Signal(9)
        self.spi_data_reg = Signal(11)

        ''' Loading the device through the 3 input Serial Data Interface (SDI) is accomplished by sending data into the SDIN pin by
        using the SCLK input pin and latching the data with the SLOAD input pin. The 11?bit SHIFT REGISTER shifts once per rising
        edge of the SCLK input. 
        [psel][msel][d0]...[d8]
        psel, 0 to load pd0, 1 to load pd1
        msel, 0 to select dual paths, 1 to select extended delay path
        d0..d8, delay value
        '''
        
        delay_spi = _SPI_TX_Master(11, rising_data = True)
        self.submodules += delay_spi


        self.comb += [
                self.sck.eq(delay_spi.sck),
                self.sdin.eq(delay_spi.mosi)]

        delay_fsm = FSM(reset_state="INIT")
        self.submodules += delay_fsm

        # wait for load pulse
        delay_fsm.act("INIT",
            self.ready.eq(1),

            If(self.load,
                NextState("LOADA"),
                NextValue(self.delay1_reg, self.delay1),
                NextValue(self.delay2_reg, self.delay2)
            ),
        )

        # load delay1 bits over spi
        delay_fsm.act("LOADA",
            self.en.eq(1),
            delay_spi.data_in.eq(Cat(0, 0, self.delay1_reg)),
            delay_spi.load.eq(1),
            NextState("WAITA"),
        )

        delay_fsm.act("WAITA",
            self.ready.eq(0),
            self.en.eq(1),
            If(delay_spi.bit_count == 11,
                self.sload.eq(1)
            ).Else(
                self.sload.eq(0)
            ),

            If(delay_spi.ready,
                NextState("LOADB")
            ).Else(
                NextState("WAITA")
            )
        )

        # send delay2 bits over spi
        delay_fsm.act("LOADB",
            self.ready.eq(0),
            self.en.eq(1),
            delay_spi.data_in.eq(Cat(1, 0, self.delay2_reg)),
            delay_spi.load.eq(1),
            NextState("WAITB"),
        )

        delay_fsm.act("WAITB",
            self.ready.eq(0),
            self.en.eq(1),
            If(delay_spi.bit_count == 11,
                self.sload.eq(1)
            ).Else(
                self.sload.eq(0)
            ),

            If(delay_spi.ready,
                NextState("END")
            ).Else(
                NextState("WAITB")
            )
        )

        delay_fsm.act("END",
            self.ready.eq(0),
            self.en.eq(1),
            NextState("INIT")
        )




def delay_test(dut):
    yield [dut.delay1.eq(0x03), dut.delay2.eq(0xff), dut.load.eq(0)]
    yield
    yield dut.load.eq(1)
    yield
    yield dut.load.eq(0)
    for i in range(190):
        yield

    yield [dut.delay1.eq(0xaa), dut.delay2.eq(0x77), dut.load.eq(0)]
    yield
    yield dut.load.eq(1)
    yield
    yield dut.load.eq(0)
    for i in range(190):
        yield



if __name__ == '__main__':
    delay_dut = DelayController()
    run_simulation(delay_dut, delay_test(delay_dut), vcd_name="delay.vcd")
    verilog.convert(DelayController()).write("delay.v")
