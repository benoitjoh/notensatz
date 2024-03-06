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

\score 
{
%\unfoldRepeats{
  <<
  \new ChordNames {
      \chords_part_a 
      \chords_part_b 
      \chords_part_c 
      \chords_part_d 
      \chords_part_e
    }
  
  \new Staff \with { instrumentName = "Vocal" }
    { \global 
      \voice_part_a  
      \voice_part_b
      \voice_part_c
      \voice_part_d
      \voice_part_e
    }
  \new Staff \with { instrumentName = \markup { \center-column { "Clarinet" \line { "in B" \tiny \flat } } } 
                     midiMaximumVolume = 0 %suppress midi 
                   }
    {  \global 
       \transpose d e {
      \voice_part_a  
      \voice_part_b
      \voice_part_c
      \voice_part_d
      \voice_part_e
       }
    }
  >>

%}
  \layout { }
  \midi { \tempo 4=120 }
}

