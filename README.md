# tdr
Prototype time domain reflectometer/sampling oscilloscope.
90 GSPS equivalent time sampling with an actual sampling rate of 30 samples per second. 
(Once the TDR is controlled it from an FPGA instead of bitbanging from a Beaglebone the sampling rate might be closer to 1 kS/s.)

The input bandwidth is TBD, maybe 8 GHz?

![r0 block diagram](/doc/block_diagram.png)
![r0 pcb](/doc/tdr_r0_pcb.jpg)

Here is sampling the falling edge of the TDR pulse, and a plot of a 1.2 GHz sine wave with analog triggering.

![r0 sweep](/doc/first_sweep.png)
![r0 sweep](/doc/analog_sweep.png)

