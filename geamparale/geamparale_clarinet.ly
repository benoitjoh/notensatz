% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\header { instrument = \markup \concat {"Clarinet in B" \flat }}

\paper {
  system-system-spacing.padding = #2.5 % spacer between the staff group
  %system-system-spacing.basic-distance = #10
  ragged-last-bottom = ##t
  bottom-margin = 7
}
\include "music.ily"
t={ s2 s4.} % empty bar


\markup \vspace #0 % space between header and score


\score 
{
  <<
  \new ChordNames {
      \chords_part_a   
      \chords_part_b   
      \chords_part_c  
    }
  \new ChordNames \transpose d e {
    \override ChordName.font-size = #-2
      \chords_part_a   
      \chords_part_b   
      \chords_part_c  
    }

  \new Staff \with { instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } midiInstrument = "Clarinet"}
    { \global 
      \transpose d e {
          \voice_part_a
          \voice_part_b
          \voice_part_c
      }
    }
  \new Staff % empty
    { \clef "vaticana-do2"
     \repeat volta 2 {\t \t \t \t \t \t \t \t }
     \repeat volta 2 {\t \t \t \t \t \t \t \t }
     \repeat volta 2 {\t \t \t \t \t \t \t \t }
    }


  >>


  \layout { }
  %\midi { \tempo 4=120 }
}

