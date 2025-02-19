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
      {
        s2 \chords_a 
        s2 \chords_b
        s2 \chords_c
      }
    }
    \new ChordNames {
      \override ChordName.font-size = #-2
     \transpose bes, c {
      s2 \chords_a
      s2 \chords_b
      s2 \chords_c
     }
    }
    
  \new Staff \with {
      midiInstrument = "Clarinet"
      instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  } 
    {
     \transpose bes, c {
       \global
       \voice_vocal_a
      }
    }

  >>
  \layout { }
  %\midi { \tempo 4=90 }
}
