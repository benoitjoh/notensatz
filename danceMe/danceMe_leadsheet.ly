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

 
% -- container ---------------------------------------------


\score {
  <<
    \new ChordNames \with {midiInstrument = "acoustic grand"} {
      \override ChordName.font-size = #1
      \transpose d a, 
      \transpose f f, {
      \chords_stanza
      \chords_bridge
       }
    }
    
  \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
      \global 
      \transpose d a, 
      {
      \voice_vocal_stanza 
      \voice_bridge
      }
    }
   
  \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
      }
    {  
    \stanza_one 
    \refrain
    \lala
    }
    
    \new Lyrics
    {
      \stanza_two
    }
   
    \new Lyrics
    {
      \stanza_three
    }
    
    \new Lyrics 
    {
      \stanza_four
    }

  
  >>
  \layout { }
  \midi { \tempo 4=120 }
}