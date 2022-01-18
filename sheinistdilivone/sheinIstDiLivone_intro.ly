\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5
  first-page-number = #1
}

\header {
  title = "Shein Vi Di Livone"
  subtitle = "[ Intro ]"
  composer = "Katharina Müther"
  copyright = ""
  arranger = "(Orakel)"
}

\markup \vspace #1 % space between header and score

\include "sheinIstDiLivone-music-intros.ily"

\score {
  
  \new Staff  \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  }
  <<
    \new Voice= "second"  
        \clef "treble_8"
        \tempo "Adagio (ad libitum)"

         { \voiceTwo \voice_concha_base }
  >>
  
\layout { }
  \midi { \tempo 4=120 }
}

\markup \vspace #1 % space between header and score


\score {
<<
  \new ChordNames    
    \voice_intro_chords

  \new Staff \with {
    midiInstrument = "Acoustic Grand Piano"
    instrumentName = "Accordion" }
    { 
      {
      \global
      \voice_intro_accordion
      }  
    }
 
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  } { 
    \clef "treble_8"
     {
    \global
    \voice_intro_guitar
    }
  }
>>



\layout { }
  \midi { \tempo 4=120 }
}
