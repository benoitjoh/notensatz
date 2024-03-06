% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  system-system-spacing.basic-distance = #15 % spacer between the staff group
  ragged-last-bottom = ##t
}

\include "music.ily"

\markup \vspace #0 % space between header and score

\score 
{
%\unfoldRepeats{
  <<
  \new ChordNames {\chords_part_a \chords_part_b \chords_part_a_two}
  
  \new Staff \with { instrumentName = "Vocal" }
    { \global 
      \voice_part_a  
      \voice_part_b
      \voice_part_a_two
    }
  >>

%}
  \layout { }
  %\midi { \tempo 4=120 }
}

