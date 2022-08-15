\version "2.20.0"

\include "header.ily"
\include "music.ily"



% -- container ---------------------------------------------
\score {
  <<
       
  \new Staff \with {
      midiInstrument = "clarinet"}
    {
    \voice_clarinet
     \bar "|."
    }
    
     \new Staff \with {
      midiInstrument = "accordion"}
    {
     \global
     \voice_accordion
     \bar "|."
    }
 
   \new ChordNames  { 
    \voice_chords     
     }
     
   \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"}
    {

     \voice_ostinato
    }
    
  
  >>
  \layout { }
  \midi { \tempo 4=80 }
}