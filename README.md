# tdr
Prototype time domain reflectometer/sampling oscilloscope.

Input bandwidth TBD, maybe 8 GHz?

![r0 block diagram](/doc/block_diagram.png)
![r0 pcb](/doc/tdr_r0_pcb.jpg)

Here is the first sweep from the TDR, 90 GSPS equivalent time sampling with an actual sampling rate of 0.8 samples per second..
![r0 sweep](/doc/first_sweep.png)
(Once the TDR is controlled it from an FPGA instead of bitbanging from a Beaglebone the sampling rate might be closer to 1 kS/s.)
