import serial
from pylab import *
import pdb
import time

N_DELAYS = 501

def grab_sweep():
    with serial.Serial('/dev/ttyACM1', 460800, timeout = 10) as ser:
        ser.flush()
        tstart = time.time()
        ser.write(b'a')
        sweep = ser.read(N_DELAYS)
        print("sweep length: {}".format(len(sweep)))
        tend = time.time()
        sweep = np.frombuffer(sweep, dtype=np.uint8)
        print(sweep)
    return sweep


for i in range(5):
    sweep = grab_sweep()
    plot(sweep[:-1], 'o')

show()


