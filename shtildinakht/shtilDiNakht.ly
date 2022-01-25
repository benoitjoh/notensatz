\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #1
}

\include "header.ily"
\include "music.ily"
\include "lyrics.ily"

\markup \vspace #0 % space between header and score

\score {
  
%MIDION%  \unfoldRepeats { %directive do this only on midigenreration

<<
  \new ChordNames
    \voice_chords
    
  \new Staff \with { midiInstrument = "Violin"
    instrumentName = "Vocal" } 
    { 
    \clef "treble"
    {
    \global
    \voice_vocal
    }  
  }
  
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
    }

  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
    }
    { 
      \transpose a b {
        \global
        \voice_clarinet
        }  
    }

  \new Staff \with {
    midiInstrument = "Acoustic Grand"
    instrumentName = "Akkordion" }
    {
      \global
      \voice_accordion
    }
>>

  \layout { }
} 
\markup \vspace #1 % space score and table
\lyrics_tabloid
