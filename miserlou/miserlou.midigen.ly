% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline="Miserlou"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"


\markup \vspace #1 % space between header and score

\include "music.ily"
\header { piece = "only midi generation" }

\score {
  \unfoldRepeats {
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
  }
\layout { }
  \midi { \tempo 4=140 }
}
