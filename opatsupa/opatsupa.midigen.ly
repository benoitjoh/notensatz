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
      \voice_chords
    }
    
  \new Staff \with {instrumentName = "Violin" 
                    shortInstrumentName="Viol "
                    midiInstrument = "violin"}
    {
      \set Staff.midiMaximumVolume = #0.8
     \global
     \key f \minor

    \voice_violin_a
    \voice_violin_b
    }
    
  \new Staff \with {instrumentName = "Accordion"  
                    shortInstrumentName="Acc "
                    midiInstrument = "accordion"}
    {
     \global
     \key f \minor
     \voice_accordeon
    }
    
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
                    shortInstrumentName="Cla "
                    midiInstrument = "clarinet"}
    {
     \set Staff.midiMaximumVolume = #0.2
     \global
     \key f \minor
     \voice_clarinet
    }
    
    
  \new Staff \with {instrumentName = "Vocal"   
                    shortInstrumentName="Voc "}
    {
     \global
     \key f \minor
     \voice_vocal
    }
    
   
  \new Staff \with {instrumentName = "Basso"   
                    shortInstrumentName="B"
                    midiInstrument = "contrabass"}
    {     
     \set Staff.midiMaximumVolume = #0.6
     \global
     \clef bass
     \key f \minor
     \voice_basso
    }

    
  >>
  \layout { }
  \midi { \tempo 4=95 }
}