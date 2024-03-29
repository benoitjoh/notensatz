\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum

\include "music.ily"
\include "lyrics.ily"

\paper {
  system-system-spacing.padding = #2
     systems-per-page = 6  % force nr. of systems
  }

\score {
  <<
    \new ChordNames 
    \chordmode {
      \set majorSevenSymbol = \markup { maj-7 }
      b2.:m  e2.:m  a d:7maj g e:m fis:7 b:m  
    }
      
    \new Staff \with {instrumentName = "Intro " 
                      midiInstrument = "Acoustic Guitar (Nylon)"}
    
    {\global d'2. R2. * 7}
  >>
}


\score {
  <<
    \new ChordNames \voice_chords
      
    \new Staff \with {instrumentName = "Vocal" 
                      midiInstrument = "Acoustic Guitar (Nylon)"}
      \new Voice = "lead" { 
           \oneVoice {\global %\tempo 4=200 
                      \voice_vocal }  % stanza with one single voice
            << 
              \new Voice  = "refr_one" {
                  \voiceOne \voice_refrain }  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic #0.7 
                  \voice_refrain_second}  % second voice smaller notes
            >> 
       }
 
    \new Lyrics {
      \stanza_one
      \refrain
    }

    \new Lyrics 
      \stanza_two
      
    \new Lyrics 
      \stanza_three
         
    \new Staff \with {instrumentName= "Guitar" 
                      midiInstrument = "Acoustic Guitar (Nylon)"
                      midiMaximumVolume =  0.5
    }
        <<
          \clef "treble_8"
          \new Voice {\voiceOne { \global \voice_guitar_one}} 
          \new Voice {\voiceTwo \voice_guitar_two }
        >>
  >>
  
  \layout {
    #(layout-set-staff-size 18) 
    }
  \midi { \tempo 4=200 }
}