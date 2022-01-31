\version "2.20.0"

bass_spacer =  { s1*39 } % pause for basso voice from the beginning to last bar

\include "music.ily"
\include "music-intros.ily"

\score {
  \header { piece =  "for midi generation only" }
  <<
    \new ChordNames 
      {
        s1 * 40 % concha / intro no chords
       \voice_chords
      }
      
    \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
        instrumentName = "guitar" } 
       
      {
        \global
        \clef "treble_8"
        <<
          \new Voice \with { midiInstrument = "acoustic guitar (nylon)" } 
            \voiceOne {
              \voice_concha_melodie 
              \voice_intro_guitar 
              \voice_vocal
            }
          \new Voice \with { midiInstrument = "acoustic bass" } 
            \voiceTwo {  s1*39 \cue_intro_basso }
        >>
      }
      
    \new Staff \with {
        midiInstrument = "acoustic grand"
        instrumentName = "accordion" } 
      {
        s1 * 12 % concha
        \voice_intro_accordion
        s1 * 32 % stanza
      }
  >>
  \midi { \tempo 4=150 }
  \layout {}
}
