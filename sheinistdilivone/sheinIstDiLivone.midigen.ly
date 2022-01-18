\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #2
}

bass_spacer =  { s1*38 }

\include "sheinIstDiLivone-header.ily"
\include "sheinIstDiLivone-music.ily"
\include "sheinIstDiLivone-lyrics.ily"
\include "sheinIstDiLivone-music-intros.ily"

\score {
  \header { piece =  "for midi generation only" }
  <<
    \new ChordNames 
      {
        s1 * 11 % concha
        \voice_intro_chords
        \voice_chords
      }
      
    \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
        instrumentName = "guitar" } 
      {
        \tempo "Moderato"
        \global
        \clef "treble_8"
        \voiceTwo \voice_concha_base
        
        \voice_intro_guitar
        \voice_vocal
      }
      
    \new Staff \with {
        midiInstrument = "piano"
        instrumentName = "accorion" } 
      {
        s1 * 11 % concha
        \voice_intro_accordion
        s1 * 32 % stanza
      }
  >>
  \midi { \tempo 4=150 }
  \layout {}
}
