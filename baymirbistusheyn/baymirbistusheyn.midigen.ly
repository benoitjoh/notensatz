\version "2.20.0"

\include "baymirbistusheyn-header.ily"

\markup \vspace #0 % space between header and score

\include "baymirbistusheyn-music.ily"

\score { \header { piece = "unfolded version just for midigeneration... " }
  \unfoldRepeats { 
    <<
      \new ChordNames 
        \voice_chords
    
      \new Staff \with { midiInstrument = "acoustic guitar (nylon)" } 
        {
          \global
          \clef "treble" 
          \voice_vocal
        }
    >>
  }
  \midi { \tempo 4=60 }
  \layout {} % just for checking... 
}
