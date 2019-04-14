# jon klein
# tdr gateware

# this is my first attempt at HDL in awhile and my first time using migen
# copying from this is probably a bad idea

# mit license

from migen import *
from migen.fhdl import verilog


class UartTx(Module):
    def __init__(self, sim = False):
        # inputs
        self.data = Signal(8)
        self.load = Signal(1)

        # outputs
        self.tx = Signal(1)
        self.ready = Signal(1)
        
        # internal
        self.tx_count = Signal(12)
        self.tx_clock = Signal(1)
        self.bitcount = Signal(4)
        self.tx_reg = Signal(8)

        fpga_clk = 12e6
        baudrate = 38400 

        tx_divisor = int(fpga_clk / baudrate)
        if sim:
            tx_divisor = 3

        uartfsm = FSM(reset_state="INIT")
        self.submodules += uartfsm

        uartfsm.act("INIT",
            self.tx.eq(1),
            self.ready.eq(1),
            If(self.load,
                NextState("START"),
                NextValue(self.tx_count, tx_divisor),
                NextValue(self.tx_reg, self.data),
            ).Else(
                NextState("INIT")
            )
        )

        uartfsm.act("START",
            self.tx.eq(0),
            If(self.tx_count == 0,
                NextValue(self.tx_count, tx_divisor),
                NextValue(self.bitcount, 8),
                NextState("SENDBIT")
            ).Else(
                NextValue(self.tx_count, self.tx_count - 1),
                NextState("START")
            )
        )

        uartfsm.act("SENDBIT",
            self.tx.eq(self.tx_reg[0]),
            If(self.tx_count == 0,
                NextValue(self.tx_count, tx_divisor),
                NextValue(self.bitcount, self.bitcount - 1),
                NextValue(self.tx_reg, self.tx_reg >> 1),
            ).Else(
                NextValue(self.tx_count, self.tx_count - 1),
            ),

            If((self.bitcount == 0) and (self.tx_count == 0),
                NextState("ENDBIT")
            ).Else(
                NextState("SENDBIT")
            )
        )

        uartfsm.act("ENDBIT",
            self.tx.eq(1),
            If(self.tx_count == 0,
                NextState("INIT")
            ).Else(
                NextValue(self.tx_count, self.tx_count - 1),
                NextState("ENDBIT")
            )
        )



def uart_test(dut):
    yield [dut.data.eq(0x33), dut.load.eq(0)]
    yield
    yield dut.load.eq(1)
    yield
    yield dut.load.eq(0)
    for i in range(120):
        yield

if __name__ == '__main__':
    uart_dut = UartTx()
    run_simulation(uart_dut, uart_test(uart_dut), vcd_name="uart.vcd")
    verilog.convert(UartTx()).write("uart.v")
