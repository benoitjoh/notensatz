\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #1
}

\include "music.ily"

\markup \vspace #3 % space between header and score

\score {
  
<<
  \new ChordNames
    \voice_chords
 
  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  } 
    { 
      \transpose a b {
        \global
        \voice_clarinet
        }  
    }
>>
  \layout { }
} 
