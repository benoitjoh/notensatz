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
        \intro_chords
        \stanza_chords
        \ref_a_one_chords
        \ref_a_two_chords
        \ref_b_chords
      }
      \new Staff \with {
          midiInstrument = "acoustic guitar (nylon)"
          instrumentName = "Vocal" }
        {
         \global
         \intro \break
         \stanza_voice \break
         \ref_a_one_voice \break
         \ref_a_two_voice \break     
         \ref_b_voice \break
        }
     \new Staff \with {
          midiInstrument = "Grand Piano"
          instrumentName = "Second" 
          midiMinimumVolume = #1.5
          midiMaximumVolume = #1.5
     }
        {
         \global
         s1 * 42
         \ref_b_voice_second
        }
    >>
  }
  
  \layout { }
  \midi { \tempo 4=140 }
}

