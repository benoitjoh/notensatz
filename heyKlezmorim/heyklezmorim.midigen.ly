\version "2.20.0"
\include "music.ily"

\score {
  \header { piece = "only midi generation " }
  
\unfoldRepeats { 

  <<
    \new ChordNames
      \voice_chords
      
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)"
                       instrumentName = "Vocal" } 
      { 
      \global
      \voice_vocal
      }  
    

  >>
}
  \layout { }
  \midi { \tempo 4=100 }
} 
