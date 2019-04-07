import serial
from pylab import *
import pdb

N_DELAYS = 511

with serial.Serial('/dev/ttyACM1', 115200) as ser:
    ser.flush()
    ser.write(b'a')
    sweep = ser.read(N_DELAYS)
    sweep = np.frombuffer(sweep, dtype=np.uint8)
    print(sweep)

plot(sweep)
show()


