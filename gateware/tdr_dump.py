import serial
from pylab import *
import pdb
import time

N_DELAYS = 511

with serial.Serial('/dev/ttyACM1', 230400 * 2) as ser:
    ser.flush()
    tstart = time.time()
    ser.write(b'a')
    sweep = ser.read(N_DELAYS)
    tend = time.time()
    sweep = np.frombuffer(sweep, dtype=np.uint8)
    print(sweep)
    print (tend - tstart)
plot(sweep)
show()


