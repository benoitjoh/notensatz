% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = \markup \concat {"Clarinet in B" \flat }}

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #2 % spacer between the staff group
  %last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------
\include "music.ily"

\markup \vspace #2 % space between header and score



% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \transpose f bes, \voice_chords_a
    }
    \new ChordNames {
      \override ChordName.font-size = #-2
     \transpose f c,  \voice_chords_a
    }
    
  \new Staff \with {
      midiInstrument = "Clarinet"
      instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  } 
    {
    \transpose f c {
       \global
       \voice_vocal_a
      }
    }

  >>
  \layout { }
  %\midi { \tempo 4=90 }
}
