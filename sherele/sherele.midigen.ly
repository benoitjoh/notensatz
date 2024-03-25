% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { piece = "only midi generation " }

\include "../_common/footers.ily"
\footer_common_with_pagenum 


% -- music  ------------------------------------------------

\include "music.ily"


% -- container ---------------------------------------------
\score {

\unfoldRepeats 
  <<
    
    \new ChordNames {
      \voice_chords_a
      \voice_chords_b
      \voice_chords_c
      \voice_chords_d
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \voice_vocal_a
     \voice_vocal_b
     \voice_vocal_c
     \voice_vocal_d
     
    }
  >>
  \layout { }
  \midi { \tempo 4=95 }
}