\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #4
  ragged-bottom = ##t
}
\header {
    instrument = \markup \small "(Clarinet)"
}

\include "music.ily"
\include "lyrics.ily"


% stanza ... 
\score {
  \header { piece =  "" }
  <<
  
    \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
        } 
      {
        \tempo "Moderato"
        \global
        \transpose d e \voice_vocal
      }
  >>
  \layout {}

}
