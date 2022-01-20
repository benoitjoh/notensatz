\version "2.20.0"

\include "music.ily"

\markup \vspace #0 % space between header and score

\score {
  \header { piece = "only midi generation " }
  <<
    \new Staff 
        \global
        \voice_vocal
  >>
 \layout { }
 \midi { \tempo 4=100 }
}