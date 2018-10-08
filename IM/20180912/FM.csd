<CsoundSynthesizer>
<CsOptions>
-odac -d
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 10
nchnls = 1
0dbfs = 1
instr 1
ifreq= cpspch (p4) 
kenv expon 1/3, p3, 0.01
kindex expon 0.1, p3, 3
aout foscil kenv, ifreq, 1, 3, kindex, 1
out aout
endin


</CsInstruments>
<CsScore>
f1 0 4096 10 1
i1 0 3 9.00
i1 1 13 9.01
i1 1.33 8 9.02

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
