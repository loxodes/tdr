from pylab import *
import glob
import pdb

NPOINTS = 500

t = arange(NPOINTS) * 11.2e-12
v_fwd = -.095

def calc_voltage(sweep):
    return 4 * ((sweep[:-1] - 2048.)/4096)

def read_sweep(prefix):
    files = glob.glob(prefix + '*.npy')
    sweep = np.zeros(NPOINTS)

    for filename in files:
        with open(filename) as f:
            sweep += calc_voltage(np.load(f))
    return sweep / len(files)

def cal_load():
    return read_sweep('m_m_thru_load')

if __name__ == '__main__':
    cal = cal_load()
    
    sweeps = ['bnc_tee_25ohm', 'bnc_tee_50ohm', 'bnc_tee_open']

    for s in sweeps:
        sweep = read_sweep(s) - cal
        rho = sweep / v_fwd
        rho[rho > .99999] = .99999
        z0 = 50 * (1 + rho) / (1 - rho)
        d = 1000 * t * 3e8 / 2.
        plot(d[200:] - d[200], z0[200:])
        ylim(0, 100)

    grid(True)
    legend(sweeps)
    title('BNC tee terminated terminated at zero, one, and two ports')
    xlabel('electrical length (mm)')
    ylabel('z (ohms)')
    #show()
    plt.savefig('sweep.png')
    pdb.set_trace()
