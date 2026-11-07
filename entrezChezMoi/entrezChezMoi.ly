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

 voice_vocal_stanza =  \fixed c' {
  \mark #1
  a2 g4. f8 g2. c4 c'4 bes a g a g f g  | a2 f4 e d2 d8 f4 d8 e1 | r1 |\break
  r8 a4. g4. f8 g2. c4 c'8 c'4. c'4 bes4 bes4 a8 g8 f4 g4 | a2 f4 e d2 d8 f4 d8 e1| r2. a8 a | \break
}

voice_bridge =  \fixed c' {
  \mark #2
  g8 g4. a4 f | e2. e8 e8 |  bes8 bes4. a4 f e2. e8 e8 |g8 g4. a4 bes| e4 e  e e | f1 | r2. a8 a |\break
  g8 g4. a4 f | e2. e8 e8 |  bes8 bes4. a4 f e1| g8 g4. a4 bes| c'4 bes a g | a1 | r1|\break
  }

chords_stanza = \chordmode {
  a1:m g f f a:m f e s
  a1:m g f f a:m f e s
}
chords_bridge = \chordmode {
  g1 e g e g e f s
  g1 e g e g e a:m s


}
% -- container ---------------------------------------------


\score {
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


  >>
  \layout { }
  \midi { \tempo 2=120 }
}