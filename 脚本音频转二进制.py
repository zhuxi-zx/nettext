import wave 
import numpy as np
import os

f = wave.open(r"!.wav",'rb')
params  = f.getparams()
nframes = params[:1]
strData = f.readframes(nframes)
waveData = np.fromstring(strData,dtype = np.int16)
f = waveData*1.0/(max(abs(waveData)))
g = np.around(f,decimals=1)
g [g == 0] = 2
g [g == -1] = 0
print(g)