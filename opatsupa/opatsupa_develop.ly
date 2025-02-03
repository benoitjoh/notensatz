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

voice_accordeon = \fixed c' { 
  \transpose c' c \voice_violin_a
  r2 r2 r2 r2 r2 r2 r2 r2 
  r2 r2 r2 r2 r2 r2 r2 r2
  %33
  g2 bes4 as8 g f4 as c'8 as g f f f' es'8 8 d' c' ~4 r2 r2
  r8 <f as c'>4. ~<f as c'>2 r8 <g bes d'>4. r8 <g bes>8 <f as> <e g>
  r8 <f as c'>4. ~<f as c'>2 r8 <g bes d'>4. r8 <e g>8 <f as> <g bes> 


}
% -- container ---------------------------------------------
\score {
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
    
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
      \opa
      \lumbaj
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