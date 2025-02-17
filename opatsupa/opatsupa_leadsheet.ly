% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #1 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"
\include "music_violin.ily"
\include "music_vocal.ily"
\include "lyrics.ily"

\markup \vspace #1 % space between header and score
 
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #1
      \voice_chords
    }
    

    
  \new Staff \with {instrumentName = "Vocal"}
   {     \global
     \key d \minor
     
     << 
      \new Voice  = "viol" {
          \voiceOne  \magnifyMusic #0.5  
          \voice_violin_a }  % refrain, 2 voices
      
      \new Voice = "breaks" {
          \voiceTwo
          \voice_vocal_a}  % second voice smaller notes
      >> 
   \new Voice = "lead" { 
   \oneVoice {
              \voice_vocal_b 
              \voice_vocal_c
              \voice_vocal_d
             }  % stanza with one single voice

     }
   }    
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
      \opa
      \lumbaj
    }
    
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_two
    }
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_three
    }


  >>
  \layout { }
  \midi { \tempo 4=95 }
}