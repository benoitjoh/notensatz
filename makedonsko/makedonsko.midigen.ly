% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "music.ily"


% -- container ---------------------------------------------
\score {
    \header { piece = "only midi generation " }

 \unfoldRepeats { 
   <<
     \new ChordNames {
        \voice_chords
        \voice_chords_ref_b
      }
      \new Staff \with {
          midiInstrument = "acoustic guitar (nylon)"
          instrumentName = "Vocal" }
        {
         \global
         \voice_vocal
         \voice_ref_a_one
         \voice_ref_b
        }
    >>
  }
  
  \layout { }
  \midi { \tempo 4=140 }
}

