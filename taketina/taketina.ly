% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  %system-system-spacing.padding = #10 % spacer between the staff group
  system-system-spacing.basic-distance = #20
  ragged-last-bottom = ##t
  bottom-margin = 7
}
\include "music.ily"


\markup \vspace #0 % space between header and score

t={s1 s4.}

\score 
{
  <<
  \new ChordNames {
      \chords_part_a   
      \chords_part_b   
      \chords_part_c  
      \chords_part_d 
      \chords_part_e
    }

  \new Staff \with { instrumentName = "Vocal" midiInstrument = "Clarinet"}
    { \global 
      \voice_part_a
      \voice_part_b
      \voice_part_c
      \voice_part_d
      \voice_part_e
    }

  \new Staff % empty
    { \clef "vaticana-do2"
     \repeat volta 2 {\t \t \t \t }
     \repeat volta 2 {\t \t \t \t }
     \repeat volta 2 {\t \t \t \t }
     \repeat volta 2 {\t \t \t \t }
     \repeat volta 2 {\t \t \t \t }
    }

  >>


  \layout { }
  \midi { \tempo 4=120 }
}

