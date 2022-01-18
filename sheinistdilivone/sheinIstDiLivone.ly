\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #2
}

\include "sheinIstDiLivone-header.ily"

\markup \vspace #1 % space between header and score

\include "sheinIstDiLivone-music.ily"
\include "sheinIstDiLivone-lyrics.ily"


bass_spacer =  { s1*27 }

\include "sheinIstDiLivone-music-intros.ily"

% intros ... 

\score {
  \header { piece = "Concha" }

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

\markup \vspace #2 % space between concha and intro



\score {
  \header { piece = "Intro" }
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
}

\markup \vspace #2 % space between concha and intro

% stanza ... 
\score {
  \header { piece =  "Stanza" }
  <<
    \new ChordNames \with { \override ChordName.font-size = #+1 }
      \voice_chords
  
    \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
        instrumentName = "Vocal" 
        } 
      {
        \tempo "Moderato"
        \global
        \voice_vocal
      }
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3  %spacer before textlines
      }
      \stanza_one
  >>

  \layout {  }

}
