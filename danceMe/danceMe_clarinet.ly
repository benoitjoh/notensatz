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
      {
      \chords_stanza
      \chords_bridge
       }
    }
    
    \new ChordNames {
      \override ChordName.font-size = #-3
      
      \transpose bes c {
        \chords_stanza
        \chords_bridge
      }
    }
    
  \new Staff \with  {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  
                    }
    {
      \key cis \minor
      \transpose bes c' {
        \global 
        \clarinet_stanza 
        \clarinet_bridge
      }
    }
  >>
  \layout { }
  %\midi { \tempo 4=120 }
}