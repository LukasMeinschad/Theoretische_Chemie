%chk=ch3f.chk
#p opt freq hf/6-311g(d,p)

CH3F Calculation

0 1
F1
C1 F1 r1
H1 C1 r2 F1 a1
H2 C1 r2 F1 a1 H1  120.
H3 C1 r2 F1 a1 H1 -120.

r1   1.4040
r2   1.0795
a1 109.3911
