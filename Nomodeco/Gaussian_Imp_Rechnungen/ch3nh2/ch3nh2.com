%chk=ch3f.chk
#p opt freq hf/6-311g(d,p)

CH3NH2 Calculation

0 1
N1
C2 N1 r1
H1 C2 r2 N1 a1
H2 C2 r3 N1 a2 H1  d1
H3 C2 r3 N1 a2 H1 -d1
H4 N1 r4 C2 a3 H1  d2
H5 N1 r4 C2 a3 H1 -d2

r1   1.4716
r2   1.0901
r3   1.0824
r4   1.0034
a1 114.7876
a2 108.9413
a3 113.6477
d1 121.4232
d2  64.2647
