% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = \markup \concat {"Clarinet in B" \flat }}

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
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

    
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  }  
    {
     \global
     
     \key a \minor
     
     \transpose d e {
       \voice_vocal_a
       \voice_vocal_b
       \voice_vocal_c
       \voice_vocal_d
     }
    }
  >>
  \layout { }
  
}