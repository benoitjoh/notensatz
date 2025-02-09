% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 



% -- music  ------------------------------------------------
\include "music.ily"




% -- container ---------------------------------------------
\score {
  \unfoldRepeats {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \voice_chords_a
    }
    
  \new Staff \with {instrumentName = "Violin"
                    midiInstrument = "acoustic guitar (nylon)" }
    {
     \global
     \voice_vocal_a
    }

  
  >>
  }
  \layout { }
  \midi { \tempo 4=100 }
}
