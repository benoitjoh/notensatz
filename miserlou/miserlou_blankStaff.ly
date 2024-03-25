% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
piecename_footerline="Miserlou"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

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
    \new Staff 
    {
     s1*36
    }
  >>

\layout { }
 % \midi { \tempo 4=140 }
}