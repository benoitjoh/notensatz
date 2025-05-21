% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\markup \vspace #0 % space between header and score

% -- music and text ------------------------------------------------
\include "music.ily"


\include "lyrics.ily"

\paper {% annotate-spacing = ##t 
   system-system-spacing = #'((basic-distance . 15)
)
}
global = {
  \key b \minor
  \time 7/8
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,2,2

}
% -- container ---------------------------------------------
\score {
    <<
     \new ChordNames {
       \transpose g b {\intro_chords}
     }

   \new Staff
    {
    <<
     \new Voice = "second" \magnifyMusic #0.9  { 
        {\global
         
         \stemUp
         \transpose g b { \intro_second}             
        } 
      }    \new Voice = "lead" { 
        { 
         \stemDown
         \transpose g b {\intro  }              
        } 
      }

    >>

    }
  >>   
  \layout { }
 } 
 
 
\score {
  <<
  \new ChordNames {
    \transpose g b {\stanza_chords
    \ref_a_one_chords
    \ref_a_two_chords
    \ref_b_chords}
  }
  \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Vocal" }
    {
     \new Voice = "lead" { 
     \oneVoice {\global
       
                \transpose g b {\stanza_voice
                \ref_a_one_voice \break
                \ref_a_two_voice \break}
                
     }  % stanza with one single voice
     
         << 
              \new Voice  = "refr_first" {
                 \transpose g b { \voiceOne \ref_b_voice }}  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic #0.8 
                 \transpose g b {\ref_b_voice_second} } % second voice smaller notes
         >> 
    }
    }
   
  \new Lyrics 
    \stanza_one
  \new Lyrics 
    \stanza_two
  \new Lyrics 
    \stanza_three
  \new Lyrics 
    \stanza_four
  
  >>
  \layout { }
}