\version "2.20.0"

bass_spacer =  { s1*38 } % pause for basso voice from the beginning to last bar

\include "livone-music.ily"
\include "livone-music-intros.ily"

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
