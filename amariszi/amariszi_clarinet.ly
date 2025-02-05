% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = \markup \concat {"Clarinet in B" \flat }}

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  %last-bottom-spacing.basic-distance = #10
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
    \new ChordNames \transpose d e{
      \override ChordName.font-size = #-2
      \voice_chords_a
      \voice_chords_b
      \voice_chords_c
      \voice_chords_d
    }
    
  \new Staff \with {
      midiInstrument = "Clarinet"
      instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  } 
    {
     \transpose d e {
       \global
       \voice_vocal_a
       \voice_vocal_b
       \voice_vocal_c
       \voice_vocal_d 
      }
    }
  %{  
  \new Staff % empty
    { \clef "vaticana-do2"
     s1 *9
     \repeat volta 2 { s1 *3 } \alternative { { s1 }{ s1}  }
     \repeat volta 2 { s1 *7 } \alternative { { s1 }{ s1}  }
     \repeat volta 2 { s1 *3 } \alternative { { s1 }{ s1}  }
    }
  %}
  >>
  \layout { }
  %\midi { \tempo 4=90 }
}
