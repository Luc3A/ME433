import csv

import matplotlib.pyplot as plt
import numpy as np
t = [] #time array
d = [] #data array


A = 0.99

B = 1-A

with open('sigD.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        t.append(float(row[0])) 
        d.append(float(row[1])) 

f = [] #filtered data array 

for dp in d:
    if len(f)==0:
        f.append(0)
    else:
        f.append(f[-1]*A+dp*B)


i = 0
m = []
new_t = []
new_d = []
size = 1000

while i < len(d) - size + 1: 
    window = d[i: i + size]
    average = round(sum(window) / size, 2)
    m.append(average)
    i = i+1
    new_t.append(t[i])
    new_d.append(d[i])

dt = t[1]-t[0]

Fs = 1/dt
Ts = 1/Fs
ts = np.arange(0,t[-1],Ts)
y1 = d
y2 = f 
n = len(y1)
k = np.arange(n)
T = n/Fs
frq = k/T
frq = frq[range(int(n/2))]
Y1 = np.fft.fft(y1)/n # fft computing and normalization
Y1 = Y1[range(int(n/2))]
Y2 = np.fft.fft(y2)/n # fft computing and normalization
Y2 = Y2[range(int(n/2))]



fig, (ax1, ax2, ax3) = plt.subplots(3, 1)
ax1.plot(t,d,'b-*', t, f, 'r-*')
ax1.set_xlabel('Time')
ax1.set_ylabel('Amplitude')
ax3.plot(new_t,new_d,'b-*', new_t, m, 'r-*')
ax3.set_xlabel('Time')
ax3.set_ylabel('Amplitude')
ax2.loglog(frq,abs(Y1),'b', frq,abs(Y2),'r') # plotting the fft
ax2.set_xlabel('Freq (Hz)')
ax2.set_ylabel('|Y(freq)|')
ax1.set_title('Raw vs. IIR data')
ax2.set_title('Raw vs. IIR data with FFT filter')
ax3.set_title('Raw vs. Moving Window')
plt.show()

