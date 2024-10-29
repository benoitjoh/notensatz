\version "2.20.0"

\include "music.ily"

\score { \header { piece = "unfolded version just for midigeneration... " }
  \unfoldRepeats { 
    <<
      \new ChordNames 
      {
        \chords_prelude
        \voice_chords
      }
    
      \new Staff \with { midiInstrument = "acoustic guitar (nylon)" } 
        {
          \global
          \clef "treble" 
          \voice_prelude
          \voice_vocal
        }
    >>
  }
  \midi { \tempo 4=60 }
  \layout {} % just for checking... 
}
