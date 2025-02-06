% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = \markup { "Clarinet in B" \tiny \flat } }

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
\include "music_clarinet.ily"
\include "music_vocal.ily"
\include "lyrics.ily"

\markup \vspace #2 % space between header and score

 
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      \voice_chords
    }
    

    
  \new ChordNames {
      \override ChordName.font-size = #-2
      \transpose bes c
      \voice_chords
    }
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  
                    }
    {
     \global
     \key e \minor
     \transpose bes c'
     \voice_clarinet
    }
 

  >>
  \layout { }
  %\midi { \tempo 4=95 }
}