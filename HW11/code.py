import board
import time
import displayio
import terminalio
import analogio
import board
from ulab import numpy as np # to get access to ulab numpy functions
# Declare an array with some made up data like
a = np.zeros(1024)
# Test some stats functions, like

for t in range(1024):
    sine1 = np.sin(2 * np.pi * 2.4 * t + 0)
    sine2 = np.sin(2 * np.pi * 5 * t + 1.2)
    sine3 = np.sin(2 * np.pi * 3.8 * t + 2.3)
    a[t] = sine1 + sine2 + sine3
    #time.sleep(0.05)
    #print(a[t])

fft = np.fft.fft(a)

#print(fft)

for i in range(len(fft)):
    for j in range(len(fft[i])):
        print((fft[i][j],))
        time.sleep(0.05)
    #print(fft[i])

#print(np.min(a))
#print(np.max(a))
#print(np.median(a))
# Want to know all the functions available in numpy? In REPL type np. and press Tab.
