%chk=c2h2.chk
#p opt freq hf/3-21g geom=connectivity

Acetylene geometry and frequency calculation

0 1
C
C 1 rCC
H 1 rCH 2 aHCC
H 2 rCH 1 aHCC

rCC=1.20
rCH=1.06
aHCC=180.0
