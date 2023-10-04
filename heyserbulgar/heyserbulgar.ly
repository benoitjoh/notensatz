% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #4.4 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"


% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \voice_chords_a
      \voice_chords_b
      \voice_chords_c
      \voice_chords_d
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \global
     \voice_vocal_a
     \voice_vocal_b
     \voice_vocal_c
     \voice_vocal_d
    }
  >>
  \layout { }
  \midi { \tempo 4=95 }
}