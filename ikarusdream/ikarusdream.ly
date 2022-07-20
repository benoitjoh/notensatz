\version "2.20.0"

piecename_footerline = "Ikarus Dream"
\include "../_common/footers.ily"
\footer_common_with_pagenum 
\include "../_common/makros.ily"

\include "header.ily"

\markup \vspace #1 % space between header and score

\include "music.ily"



% -- container ---------------------------------------------
\score {
  <<
     
  \new Staff \with {
      midiInstrument = "clarinet"
      instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  }
    {
     \global
     \key a  \minor
     \clef "treble_8"
     \transpose g a, 
         \voice_clarinet
     \bar "|."
    }
    
     \new Staff \with {
      midiInstrument = "accordion"
      instrumentName = "Accordion" }
    {
     \global
     \key g \minor
     \clef "treble"
         \voice_accordion
     \bar "|."
    }
 
   \new ChordNames  { 
    \voice_chords     
     }
     
 \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Git/Bass" }
    {
     \global
       \key g \minor
       \clef "treble_8"

     \voice_ostinato
    }
    
  
  >>
  \layout { }
  \midi { \tempo 4=80 }
}