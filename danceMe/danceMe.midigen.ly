% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #6
  %systems-per-page = 6  % force nr. of systems
  }

\include "music.ily"
\include "lyrics.ily"

\header { instrument = \markup\bold "- only for midigeneration -" }
% -- container ---------------------------------------------


\score {
\unfoldRepeats { 
  <<
    \new ChordNames \with {midiInstrument = "acoustic grand"} {
      \override ChordName.font-size = #1
      \transpose f f, {
      \chords_stanza
      \chords_bridge
       }
    }
    
  \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
      \global 
      {
      \voice_vocal_stanza 
      \voice_bridge
      }
    }
  \new Staff \with {instrumentName = "cla" midiInstrument = "marimba"}
    {
      \global 
      {
      \clarinet_stanza
      \clarinet_bridge
      }
    }  
  
  >>
}
  \layout { }
  \midi { \tempo 4=120 }
}