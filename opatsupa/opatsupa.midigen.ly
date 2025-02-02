% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { piece = "only midi generation " }

\include "../_common/footers.ily"
\footer_common_with_pagenum 


% -- music  ------------------------------------------------

\include "music.ily"
\include "music_violin.ily"
\include "music_clarinet.ily"
\include "music_vocal.ily"


% -- container ---------------------------------------------
\score {
\unfoldRepeats  
<<
    \new ChordNames {
      \override ChordName.font-size = #1
      \transpose es c
      \voice_chords
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \global
     \key d \minor

     \transpose es c
     \voice_violin
    }
    
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } }
    {
     \global
     \key c \minor
     \transpose es c
     \voice_clarinet
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global
     \key d \minor

     \transpose es c
     \voice_vocal
    }
    
  >>
  \layout { }
  \midi { \tempo 4=95 }
}