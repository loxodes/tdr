import time
import pdb
from mmap_gpio import GPIO
from bbone_spi_bitbang import bitbang_spi
from pylab import *

TRIG_SEL0 = (1, 6) # P8_3
TRIG_SEL1 = (1, 7) # P8_4
REF_SEL = (1, 2) # P8_5

COMP_OUT = (1, 3) # P8_6
REFCLK = (2, 2)  # P8_7

DAC_CS = (2, 3) # P8_8
DAC_SDI = (2, 5) # P8_9
DAC_SCK = (2, 4) # P8_10
DAC_CLR = (1, 13) # P8_11

DELAY_EN = (1, 12) # P8_12
DELAY_SDIN = (0, 23) # P8_13
DELAY_SCK = (0, 26) # P8_14
DELAY_SLOAD = (1, 15) # P8_15


class Dac():
    # DAC756x
    # http://www.ti.com/lit/ds/symlink/dac7563.pdf 
    # dac a is compare voltage
    # dac b is analog trigger voltage
    def __init__(self, gpio):
        self.gpio = gpio
        # msb first, data read on falling edge of clock
        # sync high at least one cycle, then low for entire transactiion
        self.spi = bitbang_spi(DAC_CS, DAC_SDI, None, DAC_SCK, rising_data = False)
        gpio.set_output(DAC_CLR)

        self.dac_cmd(0x07, 0, 1) # enable internal reference


    def dac_cmd(self, command, addr, data):
        command = ((command & 0x7) << 19) + ((addr & 0x07) << 16) + (data & 0xffff)
        self.spi.transfer(command, bits = 24)

    def set_a(self, value):
        self.dac_cmd(3, 0, value << 4)

    def set_b(self, value):
        self.dac_cmd(3, 1, value << 4)


class Delay():
    # https://www.onsemi.com/pub/Collateral/NB6L295M-D.PDF
    # delay a is pulse offset
    # delay b is trigger offset
    def __init__(self, gpio):
        self.gpio = gpio
        # lsb first, data read on rising edge of clock, en high during entire transaction
        # pulse sload on last bit after rising edge
        self.spi = bitbang_spi(DELAY_EN, DELAY_SDIN, None, DELAY_SCK, latch = DELAY_SLOAD, enable_low = False)
    
    # the chip expects lsb first, and the spi driver is msb firsr
    def _revbits(self, x, nbits = 11):
        return int(bin(x)[2:].zfill(nbits)[::-1], 2)
   
    def set_a(self, value):
        command = ((value & 0x1FF) << 2)
        command = self._revbits(command) 
        self.spi.transfer(command, bits = 11)

    def set_b(self, value):
        command = (((value & 0x1FF)) << 2) + 1
        command = self._revbits(command) 
        self.spi.transfer(command, bits = 11)


if __name__ == '__main__':
    gpio = GPIO()

    gpio.set_output(TRIG_SEL0)
    gpio.set_output(TRIG_SEL1)
    gpio.set_output(REF_SEL)

    gpio.set_input(COMP_OUT)
    gpio.set_input(REFCLK)

    delay = Delay(gpio)
    dac = Dac(gpio)
   
    NDELAYS = 1 << 9
    NDACS = 1 << 10 
    
    # trigger sources:
    # 0 - clk (delayed)
    # 1 - unused
    # 2 - analog trigger
    # 3 - external pulse
    gpio.set_value(TRIG_SEL0, gpio.LOW)
    gpio.set_value(TRIG_SEL1, gpio.LOW)

    # reference sources:
    # 0 - internal
    # 1 - external
    gpio.set_value(REF_SEL, gpio.LOW)

    # set delay a (output pulse delay) to 0
    delay.set_a(0)
    
    # delay b is trigger offset
    
    sweep = np.zeros(NDELAYS)
    print("dac.set_a(x <<2)")

    for trig_offset in range(NDELAYS):
        delay.set_b(trig_offset)
        for cmp_voltage in range(NDACS):
            dac.set_a(cmp_voltage << 2)
            if not gpio.read_value(COMP_OUT):
                sweep[trig_offset] = cmp_voltage
                break

        print("delay {}, dac {}".format(trig_offset, sweep[trig_offset]))

    print(sweep)
    sweepfile = open("sweepfile", "w")
    np.save(sweepfile, sweep)

    pdb.set_trace()
