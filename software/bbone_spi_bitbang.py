from mmap_gpio import GPIO

class bitbang_spi:
   def __init__(self, spi_cs, spi_mosi, spi_miso, spi_clk, rising_data = True, latch = None, enable_low = True):
        self.gpio = GPIO()

        self.rising_data = rising_data
        self.enable_low = enable_low 

        self.spi_cs = spi_cs
        self.spi_mosi = spi_mosi
        self.spi_miso = spi_miso
        self.spi_clk = spi_clk
        self.latch = latch

        self.gpio.set_output(spi_cs)
        self.gpio.set_output(spi_mosi)
        self.gpio.set_output(spi_clk)
        
        if self.spi_miso != None:
            self.gpio.set_input(spi_miso)
        if self.latch != None:
            self.gpio.set_output(latch)

        self.gpio.set_value(spi_cs, self.enable_low)

   def transfer(self, payload, bits = 8):
        self.gpio.set_value(self.spi_cs, not self.enable_low)
        self.gpio.set_value(self.spi_clk, self.gpio.LOW)
        if self.latch != None:
            self.gpio.set_value(self.latch, self.gpio.LOW)

        response = 0
        for i in range(bits):
            response = response << 1
            # data clocked in on clock rising edge
            self.gpio.set_value(self.spi_mosi, (payload >> (bits - (i + 1))) & 0x01)
            self.gpio.set_value(self.spi_clk, self.gpio.HIGH)

            if self.spi_miso != None:
                response |= self.gpio.read_value(self.spi_miso)

            if self.latch!= None and i == bits - 1:
                self.gpio.set_value(self.latch, self.gpio.HIGH)
           
            self.gpio.set_value(self.spi_clk, self.gpio.LOW)

        if self.latch != None:
            self.gpio.set_value(self.latch, self.gpio.LOW)

        self.gpio.set_value(self.spi_cs, self.enable_low)


        return response
