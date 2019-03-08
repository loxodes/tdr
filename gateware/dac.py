# jon klein
# tdr gateware

# this is my first attempt at HDL in awhile and my first time using migen
# copying from this is probably a bad idea

# mit license

from migen import *
from migen.fhdl import verilog
from spi import _SPI_TX_Master

class DacController(Module):
    def __init__(self):
        # DAC7563SDSCR dual DAC
        # VoutA - cmp ref
        # VoutB - trig voltage
        # inputs
        self.dac_a = Signal(12)
        self.dac_b = Signal(12)
        self.load = Signal(1)

        # wait for load pulse
        self.dac_reg = Signal(24)

        # outputs
        self.dac_sdi = Signal(1)
        self.dac_cs = Signal(1)
        self.dac_sck = Signal(1)
        self.dac_clr = Signal(1)
        self.ready = Signal(1)

        # internal
        self.dac_ready = Signal(1)
        self.dac_load = Signal(1)

        # load dac over spi
        dac_spi = _SPI_TX_Master(24, rising_data = True)
        self.submodules += dac_spi
        self.comb += [
                self.dac_cs.eq(dac_spi.cs),
                self.dac_sck.eq(dac_spi.sck),
                self.dac_sdi.eq(dac_spi.mosi),
                dac_spi.data_in.eq(self.dac_reg),
                dac_spi.load.eq(self.dac_load),
                self.dac_ready.eq(dac_spi.ready)] 


        dacfsm = FSM(reset_state="INIT")
        self.submodules += dacfsm

        dacfsm.act("INIT",
            NextValue(self.dac_reg, Cat(0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)),
            NextState("INIT_LOAD")
            # enabe internal ref, set dac gain to 1
            # [x x][1 1 1][x x x][x....x 1] enable internal ref
        )

        dacfsm.act("INIT_LOAD",
            NextState("INIT_WAIT"),
            self.dac_load.eq(1)
        )

        dacfsm.act("INIT_WAIT",
          If(self.dac_ready,
                NextState("WAIT_CMD"),
            ).Else(
                NextState("INIT_WAIT"),
            )
        )

        dacfsm.act("WAIT_CMD",
            self.ready.eq(1),
            If(self.load,
                NextState("LOAD_DACA"),
                NextValue(self.dac_reg, Cat(self.dac_a, self.dac_b))
            ).Else(
                NextState("WAIT_CMD")
            )
        )
        
        # TODO: update DAC commands.. 
        # [x x][0 0 0][0 0 0][x x x x 12 bits data] # update dac a
        # [x x][0 0 0][0 0 1][x x x x 12 bits data] # update dac b

        dacfsm.act("LOAD_DACA",
            If(self.dac_ready,
                NextState("WAIT_DAC"),
                self.dac_load.eq(1)
            ).Else(
                NextState("LOAD_DAC"),
            )
        )

        dacfsm.act("WAIT_DACA",
            If(self.dac_ready,
                NextState("WAIT_CMD"),
            ).Else(
                NextState("WAIT_DAC"),
            )
        )

        dacfsm.act("LOAD_DACB",
            If(self.dac_ready,
                NextState("WAIT_DAC"),
                self.dac_load.eq(1)
            ).Else(
                NextState("LOAD_DAC"),
            )
        )

        dacfsm.act("WAIT_DACB",
            If(self.dac_ready,
                NextState("WAIT_CMD"),
            ).Else(
                NextState("WAIT_DAC"),
            )
        )



def dac_test(dut):
    yield [dut.dac_a.eq(0x03), dut.dac_b.eq(0xff), dut.load.eq(0)]
    yield
    yield dut.load.eq(1)
    yield
    yield dut.load.eq(0)
    for i in range(130):
        yield

    pass

if __name__ == '__main__':
    dac_dut = DacController()
    run_simulation(dac_dut, dac_test(dac_dut), vcd_name="dac.vcd")
    verilog.convert(DelayController()).write("dac.v")

