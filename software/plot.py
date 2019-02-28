# quick script to plot tdr data
from pylab import *

f = file('sweepfile', 'rb')
sweep = np.load(f)
t = np.arange(len(sweep)) * 11.2e-12
v = (sweep - 2048.) * (4 / 4096.)
plt.plot(t * 1e9, v)
#plt.title('falling edge of TDR pulse, w/ 3 dB attenuator')
plt.ylabel('voltage')
plt.xlabel('time (ns)')
plt.savefig('sweep.png')
f.close()
