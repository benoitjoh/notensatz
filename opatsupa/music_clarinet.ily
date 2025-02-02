\version "2.20.0"

voice_clarinet = \fixed c' { 
  \mark #1 
  %line1
  f16 16 8 c8 f16 16 |
  f16 c f c f4 |
  g16 16 8 d8 g16 16 |
  g16 d g d g4 |
  f16 16 8 c8 f16 16 |
  f16 c e f g4   | 
  d16 e f g d e f g |
  f8 e e4
  
  %line 2
  f16 16 8 c8 f16 16 |
  f16 c f c f4 |
  

  g16 d g d g d g d  |
  g16 d g d g4 |\break
  f16 16 8 c8 f16 16 |
  f16 c e f g4   | 
  d16 e f g d e f g |
  f8 e e4
  
  %line 3
  f2 ~2 ~2 ~2 ~4 es d des b,2 c2
 
  %line 4
  f2 ~2 ~2 ~2 ~4 es d des b,2 c2

  %line 5
  c2 ~2 c4 4 f2 ~4 e d des b,2 c

  %line 6
  \repeat volta 2 {
    r2 r2 r2 r2 r2 r2 r2 r2
  }
}