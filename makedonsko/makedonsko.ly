% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 


\markup \vspace #2 % space between header and score

% -- music and text ------------------------------------------------
\include "music.ily"


\include "lyrics.ily"

% %\paper { annotate-spacing = ##t }

% -- container ---------------------------------------------
\score {
    <<
  \new Staff
    {
     \new Voice = "lead" { 
     \oneVoice {\global 
                \voice_intro                
     }
    }}
  >>   
  \layout { }
  \midi {  \tempo 4=140 }
 } 
\score {
  <<
  \new ChordNames {
    \voice_chords
    \voice_chords_ref_b
  }
  \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Vocal" }
    {
     \new Voice = "lead" { 
     \oneVoice {\global 
                \voice_vocal 
                \voice_ref_a_one \break
                \voice_ref_a_two \break
                
     }  % stanza with one single voice
     
         << 
              \new Voice  = "refr_first" {
                  \voiceOne \voice_ref_b }  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic #0.8 
                  \voice_ref_b_second}  % second voice smaller notes
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
  \midi { \tempo 4=140 }
}