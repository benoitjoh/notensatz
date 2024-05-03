% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  system-system-spacing.padding = #5.8 % spacer between the staff group
  %system-system-spacing.basic-distance = #15
  ragged-last-bottom = ##t
  bottom-margin = 7
}
\include "music.ily"


\markup \vspace #0 % space between header and score

t={ s2 s4.} % empty bar

\score 
{
  <<
  \new ChordNames {
      \override ChordName.font-size = #0
      \chords_part_a   
      \chords_part_b   
      \chords_part_c  
    }

  \new Staff \with { instrumentName = "Vocal" midiInstrument = "Clarinet"}
    { \global 
      \voice_part_a
      \voice_part_b
      \voice_part_c
    }
%{
  \new Staff % empty
    { \clef "vaticana-do2"
     \repeat volta 2 {\t \t \t \t \t \t \t \t }
     \repeat volta 2 {\t \t \t \t \t \t \t \t }
     \repeat volta 2 {\t \t \t \t \t \t \t \t }
    }
%}
  >>


  \layout { }
  \midi { \tempo 4=120 }
}

