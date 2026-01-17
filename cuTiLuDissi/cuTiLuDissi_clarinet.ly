% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 
\header { instrument = \markup { "Clarinet in B" \tiny \flat } }

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }


\markup \vspace #1 % space between header and score

\include "music.ily"

% -- container ---------------------------------------------


\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      
      \transpose d a, {
         \chords_stanza
       }
       
    }
    
    \new ChordNames {
      \override ChordName.font-size = #-3
      \transpose d g, {
        \chords_stanza
      }
    }
    
  \new Staff \with  {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  
                    }
    {
      \transpose d g, {
       \global 
       \voice_vocal_stanza 
       
      }
    }
  >>
  \layout { }
  %\midi { \tempo 4=120 }
}