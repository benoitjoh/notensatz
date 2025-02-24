% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"
\include "music_violin.ily"
\include "music_clarinet.ily"
\include "music_vocal.ily"
\include "lyrics.ily"
\include "music_accordion.ily"


% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      \transpose a a, \voice_chords
    }
    
  \new Staff \with {instrumentName = "Violin"  
                    shortInstrumentName="Viol "}
    {
     \global
     \key d \minor
     \voice_violin_a
     \voice_violin_b
     
    }
  
    \new Staff \with {
      instrumentName = "Accordion"
      shortInstrumentName="Acc "
    }
    {
      \global
      \voice_accordeon
    }
  
  \new ChordNames {
      \override ChordName.font-size = #-3
      \transpose bes c
      \voice_chords
    }
   
    \new Staff \with {
      instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }
      shortInstrumentName="Cla "
      midiInstrument = "clarinet"
    }
    {
     \key e \minor
     \transpose bes c' 
     {
       \voice_clarinet_a
       \voice_clarinet_b
     }
    }
    
  \new Staff \with {instrumentName = "Vocal"  
                    shortInstrumentName="Voc "}
    {
     \global
    \voice_vocal
    }
    
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
      \opa
      \lumbaj
    }
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_two
    }
    
    \new Staff \with {instrumentName = "Basso"   
                    shortInstrumentName="B"
                    midiInstrument = "contrabass"}
    {     
     \set Staff.midiMaximumVolume = #0.6
     \global
     \clef bass
     \voice_basso
    }
  

  >>
  \layout { }
  %\midi { \tempo 4=80 }
}