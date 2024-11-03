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

% -- container ---------------------------------------------
\score {
    <<
     \new ChordNames {
       \intro_chords
     }

   \new Staff
    {
     \new Voice = "lead" { 
     \oneVoice {\global 
                \intro                
     }
    }}
  >>   
  \layout { }
  \midi {  \tempo 4=140 }
 } 
\score {
  <<
  \new ChordNames {
    \stanza_chords
    \ref_a_one_chords
    \ref_a_two_chords
    \ref_b_chords
  }
  \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Vocal" }
    {
     \new Voice = "lead" { 
     \oneVoice {\global 
                \stanza_voice
                \ref_a_one_voice \break
                \ref_a_two_voice \break
                
     }  % stanza with one single voice
     
         << 
              \new Voice  = "refr_first" {
                  \voiceOne \ref_b_voice }  % refrain, 2 voices
              \new Voice = "refr_second" {
                  \voiceTwo \magnifyMusic #0.8 
                  \ref_b_voice_second}  % second voice smaller notes
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