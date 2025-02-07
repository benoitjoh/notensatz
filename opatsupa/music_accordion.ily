\version "2.20.0"

voice_accordeon = \fixed c' { 
  \transpose c' c \voice_violin_a
  \mark #2
  r2 r2 r2 r2 r2 r2 r2 r2 \break
  r2 r2 r2 r2 r2 r2 r2 r2 \break
  %33
  \mark #3
  e2 g4 f8 e d4 f a8 f e d d d' c'8 8 b a ~4 r2 r2 \break
  
  \mark #4
  \repeat volta 2{
    r8 <d f a>4. ~<d f a>2 r8 <e gis b>4. r8 <e g>8 <d f> <cis e>
    r8 <d f a>4. ~<d f a>2 r8 <e gis b>4. r8 <cis e>8 <d f> <e g> 
  }


}