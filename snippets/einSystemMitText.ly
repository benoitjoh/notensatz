\version "2.20.0"

global = { 
  \time 2/4 
  \key c \minor  }

melodie = 
  { as c d8 es8 es4 }

text = \lyricmode 
  {Ich4 stand a -- n2 } 





\score {
<<
\new Staff 
  \relative c'' 
  {
   \global
   \clef treble
   \melodie
  }
 
\new Lyrics 
  \text

>>


  \layout { }
  \midi {
    \tempo 4=100
  }
}