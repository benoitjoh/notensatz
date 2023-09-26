\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #4
  ragged-bottom = ##t
}

\markup \vspace #1 % space between header and score

\include "music.ily"
\include "lyrics.ily"


bass_spacer =  { s1*27 } % pause for basso voice from the beginning to last bar

\include "music-intros.ily"

\score {
  \header { piece = "Intro 1" }
  \new Staff \with { instrumentName = "Guitar" } 
    <<
      \new Voice { \voiceOne
        \global
        \clef "treble_8"
        \tempo "Adagio (ad libitum)"
        \magnifyMusic #0.8
        \voice_concha_melodie
        }
    \new Voice { 
      \voiceTwo 
      \voice_concha_base }
    >>
  \layout { }
}

\markup \vspace #4 % space between concha and intro

\score {
  \header { piece = "Intro 2" }

  <<
    \new ChordNames    
      \voice_intro_chords
  
    \new Staff \with { instrumentName = "Accordion" } 
      {
        \set Score.currentBarNumber = #13
      \global
      \tempo "Adagio ad libitum" 
      \voice_intro_accordion
      }  
    
    \new Staff  \with { instrumentName = "Guitar" }
      <<
      \new Voice { 
        \global
        \clef "treble_8"
        \voice_intro_guitar
        }
      \new Voice { \voiceOne
        \magnifyMusic 0.6 {s1*27 \cue_intro_basso }
        }
      
      >>
  >>
  \layout {  }

}
\pageBreak
% stanza ... 
\score {
  \header { piece =  "" }
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
  \layout {}

}
\pageBreak

\score {
  \header { piece =  "" }
  <<
  
    \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
        } 
      {
        \tempo "Moderato"
        \global
        \transpose d e \voice_vocal
      }
  >>
  \layout {}

}