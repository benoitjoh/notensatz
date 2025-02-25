% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = "Sol0 #2 MIDI ONLY" }

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #4 % spacer between the staff group
  %last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------
\include "music.ily"
\include "amariszi_soli.ily"

\markup \vspace #2 % space between header and score

% -- container ---------------------------------------------

\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \chords_a
    }
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
                    midiInstrument = "electric piano 1" }
    {
     \global
     \key e \minor
     \voice_solo_b
    }
    
  >>
  \layout { }
  \midi { \tempo 4=90 }
}