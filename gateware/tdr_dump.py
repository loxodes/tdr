import serial
from pylab import *
import pdb
import time

N_DELAYS = 501


file_prefix = raw_input("enter filename:")

def grab_sweep():
    with serial.Serial('/dev/ttyACM1', 460800, timeout = 10) as ser:
        ser.flush()
        tstart = time.time()
        ser.write(b'a')
        sweep = ser.read(N_DELAYS * 2)
        print("sweep length: {}".format(len(sweep)))
        tend = time.time()
        print("sweep time: {}".format(tend - tstart))
        sweep = np.frombuffer(sweep, dtype=np.uint16)
        print(sweep)
    return sweep


t = arange(N_DELAYS-1) * 11.2e-12
for i in range(10):
    sweep = grab_sweep()
    with open("sweeps/{}_{}.npy".format(file_prefix, i), 'w') as f:
        np.save(f, sweep)
    sweep = 4 * ((sweep - 2048.)/4096)
    #plot(sweep[:-1], 'o')
    plot(t, sweep[:-1])

grid(True)
title('falling edge of TDR pulse')
ylabel('voltage (V)')
xlabel('time (ns)')
show()


