\version "2.20.0"

voice_violin_a = \fixed c'' { 
  \mark #1 
  %line1
  f16 16 8 d8 f16 16 |
  f16 d f d f4 |
  g16 16 8 e8 g 16 16|
  g16 e g e g4 |\break
  
  f16 16 8 d8 f16 16 |
  f16 d e f gis4  | 
  d16 e f gis  d16 e f gis |
  f8 e e4 \break
 
  %line 2
  f16 16 8 d8 f16 16 |
  f16 d f d f4 |
 
  g16 e g e g e g e  |
  g16 e g e g4 |\break
  f16 16 8 d8 f16 16 |
  f16 d e f gis4  | 
  d16 e f gis  d16 e f gis |
  f8 e e4 \break
}

voice_violin_b = \fixed c'' { 
  %line 3
  \mark #2 
  a2 |
  f8. d16 gis4|
  a4 ~8. gis16 |
  f8. e16 f4 |\break
  f4 cis16 d e f |
  gis8 f e d |
  e2 ~2  \break

  %line 4
  f2  ~8 gis gis f |
  a gis gis4 (gis2) (gis4) cis16 d e f |
  gis8 f e d |
  e2 (2) \break
   
  %line 5
  \mark #3 
  r2 r2 r2 r2
  r8 <d,a,> r8 <d,a,> |
  r8 <d,a,> r8 <d,a,> |
  r8 <e,b,> r8 <e,b,> |
  r8 <cis,a,> r8 <cis,g,> | \break
  
  \mark #4
  \repeat volta 2{     
  r8 <d,a,> r8 <d,a,> |
  r8 <d,a,> r8 <d,a,> |
  r8 <e,b,> r8 <e,b,> |
  r8 <cis,a,> r8 <cis,g,> |  \break

  r8 <d,a,> r8 <d,a,> |
  r8 <d,a,> r8 <d,a,> |
  r8 <e,b,> r8 <e,b,> |
  r8 <cis,a,> r8 <cis,a,> | 
  }
}