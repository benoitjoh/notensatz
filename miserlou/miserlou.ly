% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline="Miserlou"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"

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
  \midi { \tempo 4=140 }
}