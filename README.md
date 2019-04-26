# tdr
Prototype time domain reflectometer/sampling oscilloscope.
90 gigasamples/second equivalent time sampling with an actual sampling rate of 5 kilosamples/second.

The input bandwidth is TBD, maybe 8 GHz?

![r0 block diagram](/doc/block_diagram.png)
![r0 pcb](/doc/tdr_r0_pcb.jpg)

Following is sampling the falling edge of the TDR pulse, impedance of a BNC tee, and a 1.2 GHz sine wave with analog triggering.

![r0 sweep](/doc/falling_edge.png)
![r0 sweep](/doc/bnc_z0_sweep.png)
![r0 sweep](/doc/analog_sweep.png)

