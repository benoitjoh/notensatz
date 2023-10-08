\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  system-system-spacing.padding = #4
}
\markup \vspace #1 % space between header and score

\include "music.ily"

\score {
  <<
  \new ChordNames {
    \voice_chords
  }
  \new Staff 
    {
     \global
     \voice_vocal
    }
  >>

\layout { }
  %\midi { \tempo 4=140 }
}