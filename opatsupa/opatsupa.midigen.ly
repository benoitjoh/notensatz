% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { piece = "only midi generation " }

\include "../_common/footers.ily"
\footer_common_with_pagenum 


% -- music  ------------------------------------------------

\include "music.ily"
\include "music_violin.ily"
\include "music_clarinet.ily"
\include "music_vocal.ily"
\include "music_accordion.ily"


% -- container ---------------------------------------------
\score {
\unfoldRepeats  
<<
    \new ChordNames {
      \override ChordName.font-size = #1
      \transpose a a, {
          \chords_a
          \chords_b_c_d
      }
    }
    
  \new Staff \with {instrumentName = "Violin" 
                    shortInstrumentName="Viol "
                    midiInstrument = "violin"}
    {
      \set Staff.midiMaximumVolume = #0.8
     \global
     \key d \minor

    \voice_violin_a
    \voice_violin_b
    }
    
  \new Staff \with {instrumentName = "Accordion"  
                    shortInstrumentName="Acc "
                    midiInstrument = "accordion"}
    {
     \global
     \key d \minor
     \voice_accordeon
    }
    
  \new Staff \with {instrumentName =  "Clarinet" 
                    shortInstrumentName="Cla "
                    midiInstrument = "clarinet"}
    {
     \set Staff.midiMaximumVolume = #0.7
     \global
     \key d \minor
     \voice_clarinet_a
     \voice_clarinet_b
    }
    
    
  \new Staff \with {instrumentName = "Vocal"   
                    shortInstrumentName="Voc "}
    {
     \global
     \key d \minor
     \voice_vocal
    }
    
   
  \new Staff \with {instrumentName = "Basso"   
                    shortInstrumentName="B"
                    midiInstrument = "marimba"}
    {     
     \set Staff.midiMaximumVolume = #0.6
     \global
     \clef bass
     \key d \minor
     \voice_basso
    }

    
  >>
  \layout { }
  \midi { \tempo 4=95 }
}