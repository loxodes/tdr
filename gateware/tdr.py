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

        # internal signals

        # create dac controller
        # create ref select
        # create uart tx
        # create adc controller

        # create fsm

        # add to submodules

        # for each time gate
            # increase counter until cmp is triggered
            # wait for uart ready
            # send dac over uart

        # return to init state
        pass

if __name__ == '__main__':
    pass

