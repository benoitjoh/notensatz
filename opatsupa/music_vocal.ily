\version "2.20.0"

voice_vocal_a = \fixed c' {
  \mark #1 
  r2 r2 r2 r2 r2 r2 r2 r2 
  r2 r2 r2 r2 r2 r2 r2 r2 \break

  }

voice_vocal_b = \fixed c' {
  \mark #2 
  c'8 8 8 8 8b a4 a8 8 8 8 8 gis f4
  r8 f8 8 8 g f f4 e8 d e e f e e 4
  d 8 8 e f e4 d8 r8 
  d 8 8 e f e4 d8 r8 
  d'16 c'16 8 c' bes bes8 a a gis ~gis8 f16 16 e8 8 e4 r4\break
}

voice_vocal_c = \fixed c' {
  \mark #3
  <cis g>2 ~<cis g>8 <cis f> <cis e> d
  r8 f16 16 8 8  g f e d 
  d <f d'> <f c'> <f c'>
  <e b> <f a> <f a>4 ~<f a>8 <d e> <d e> <d e> f <cis e> ~<cis e>4 \break
}

voice_vocal_d = \fixed c' {
  \mark #4
  \repeat volta 2 {
    <f a>8 <f a> <f a>  
    <f a> <f a>8. <f a>16  <f a>8 r8
    r8 <e gis>16 <e gis>16 <e gis>8  <e gis>8 
    <f a>4 <e a>8 r8 
    <f a>8 <f a> <f a>  <e gis>
    <e gis d'>8. <e gis d'>16  <e gis d'>8 r8
    r8 <e gis>16 <e gis b>16 <e gis b>8  <e gis b>8 
    <f a cis'>4 <e a cis'>8 r8
    }
  }

voice_vocal = \fixed c' { 
  %line1
  \voice_vocal_a
  \voice_vocal_b
  \voice_vocal_c
  \voice_vocal_d
 }
 