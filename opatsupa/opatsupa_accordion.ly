% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = "Accordion"}

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"

\include "music_violin.ily"
\include "music_accordion.ily"

\markup \vspace #2 % space between header and score
 
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      \chords_a
      \chords_b_c_d
    }
    

    
  \new Staff \with {instrumentName = "Accordion"}
    {
     \global
     \key d \minor
     \voice_accordeon
    }

  >>
  \layout { }
  %\midi { \tempo 4=95 }
}