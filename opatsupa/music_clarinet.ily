\version "2.20.0"


voice_clarinet_a = \fixed c'' { 
  \mark #1 
  %line1
  d16 16 8 a,8 d16 16 |
  d16 a, d a, d4 |
  e16 16 8 b,8 e16 16 |
  e16 b, e b, e4 |
  d16 16 8 a,8 d16 16 |
  d16 b, cis d eis4   | 
  b,16 cis d eis b, cis d eis |
  d8 cis cis4
  
  %line 2
  d16 16 8 a,8 d16 16 |
  d16 a, d a, d4 |
  

  e16 cis e cis e cis e cis  |
  e16 cis e cis e4 |\break
  d16 16 8 a,8 d16 16 |
  d16 a, cis d eis4   | 
  b,16 cis d eis b, cis d eis |
  d8 cis cis4 \break
}

voice_clarinet_b = \fixed c'' { 
  %line 3
  \mark #2

  f2 ~2 ~2 ~2 ~4 e d des b,2 cis2\break
 
  %line 4
  f2 ~2 ~2 ~2 ~4 e d c b,2 cis2 \break

  %line 5
    \mark #3

  cis2 ~2 d4 4 f2 ~4 e d des b,2 cis \break

  %line 6
  \repeat volta 2 {
      \mark #4

    r2 r2 r2 r2 r2 r2 r2 r2
  }
}