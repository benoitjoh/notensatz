% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Makedonsko"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"

\markup \vspace #2 % space between header and score

% -- music and text ------------------------------------------------
\include "music.ily"


\include "lyrics.ily"

% -- container ---------------------------------------------
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
     \global
     \voice_vocal
     \voice_ref_a_one \break
     \voice_ref_b
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