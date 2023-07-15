% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"
\include "header.ily"
\include "music.ily"

\score {
  \header { piece = "only midi generation " }

\unfoldRepeats {
  <<
  \new ChordNames {\voice_chords \voice_chords_refrain}
  
  \new Voice = "stanza" { 
    { \global \voice_vocal } 
    \new Voice = "refrain" { \voice_refrain} 
    }
    
  \new Staff \with { instrumentName = "Basso" midiInstrument = "acoustic bass"}
   { \voice_bass
     \voice_bass_refrain
   }
   >>

}
  \layout { }
  \midi { \tempo 4=120 }
}
