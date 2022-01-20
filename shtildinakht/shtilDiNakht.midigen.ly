\version "2.20.0"
\include "music.ily"

\score {
  \header { piece = "only midi generation " }
  
\unfoldRepeats { 

  <<
    \new ChordNames
      \voice_chords
      
    \new Staff \with { midiInstrument = "Violin"
      instrumentName = "Vocal" } 
      { 
      \global
      \voice_vocal
      }  
    
    \new Staff \with {
      midiInstrument = "Clarinet"
      instrumentName = "Clarinet (B)" } 
      { 
        \global
        \voice_clarinet
      }
  
    \new Staff \with {
      midiInstrument = "Acoustic Grand"
      instrumentName = "Akkordeon" }
      {
        \global
        \voice_accordion
      }
  >>
}
  \layout { }
  \midi { \tempo 4=100 }
} 
