% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum

\paper {
  system-system-spacing.padding = #0.6
  %systems-per-page = 6  % force nr. of systems
  }

\include "music.ily"
\include "lyrics.ily"



% -- container ---------------------------------------------

\markup \vspace #0.7

\score {
  <<
    \new ChordNames \with {midiInstrument = "acoustic grand"} {
      \override ChordName.font-size = #1
      \transpose f f, {
      \chords_refrain
      \chords_stanza
      \chords_bridge
      \chords_stanza_three
      \chords_stanza_four
       }
    }

  \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
      \global
      {
      \vocal_refrain
      \voice_stanza
      \voice_bridge
      \voice_stanza_three
      \voice_stanza_four
      }
    }


  \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
      }
    {
    \refrain
    \stanza_one
    \bridge
    \stanza_three
    \stanza_four
    }

  \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
      }
    {
    \stanza_two
    }


  >>
  \layout { }
  \midi { \tempo 2=120 }
}