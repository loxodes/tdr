from mmap_gpio import GPIO
from bbone_spi_bitbang import bitbang_spi
from pylab import *

# TODO: define pins 
TRIG_SEL0 = TBD
TRIG_SEL1 = TBD
REF_SEL = TBD

COMP_OUT = TBD
REFCLK = TBD

DAC_CS = TBD
DAC_SDI = TBD
DAC_SCK = TBD
DAC_CLR = TBD

DELAY_EN = TBD
DELAY_SDIN = TBD
DELAY_SCK = TBD
DELAY_SLOAD = TBD


# TODO: update spi bitbang for rising or falling edge data, MSB or LSB first, latch signal..

class Dac():
    # DAC756x
    # http://www.ti.com/lit/ds/symlink/dac7563.pdf 
    # dac a is compare voltage
    # dac b is analog trigger voltage
    def __init__(self, gpio):
        self.gpio = gpio
        # msb first, data read on falling edge of clock
        # sync high at least one cycle, then low for entire transactiion
        self.spi = bitbang_spi(DAC_CS, DAC_SDI, False, DAC_SCK, first = 'MSB')
        gpio.set_output(DAC_CLR)

        self.dac_cmd(0x07, 0, 1) # enable internal reference


    def dac_cmd(self, command, addr, data):
        command = (command & 0x7 << 19) + (addr & 0x07 << 16) + ((data << 4) & 0xffff)
        self.spi.transfer(command)

    def set_a(self, value):
        self.dac_cmd(3, 0, value)

    def set_b(self):
        self.dac_cmd(3, 1, value)

class Delay():
    # https://www.onsemi.com/pub/Collateral/NB6L295M-D.PDF
    # delay a is pulse offset
    # delay b is trigger offset
    def __init__(self, gpio):
        self.gpio = gpio
        # lsb first, data read on rising edge of clock, en high during entire transaction
        # pulse sload on last bit after rising edge
        self.spi = bitbang_spi(DELAY_EN, DELAY_SDIN, False, DELAY_SCK, latch = DELAY_SLOAD, first = 'LSB')
    
    def set_a(self, value):
        command = (value & 0x1FF) >> 2
        self.spi.transfer(command)

    def set_b(self):
        command = 1 + ((value & 0x1FF) >> 2)
        self.spi.transfer(command)


if __name__ == '__main__':
    gpio = GPIO()

    gpio.set_output(TRIG_SEL0)
    gpio.set_output(TRG_SEL1)
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
    # delaay b is trigger offset

    sweep = np.zeros(NDELAYS)

    for trig_offset in range(NDELAYS):
        delay.set_b(trig_offset) 
        for cmp_voltage in range(NDACS):
            dac.set_a(cmp_voltage << 2)
            if read_value(COMP_OUT):
                sweep[trig_offset] = cmp_voltage
                break

    print sweep
