% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #15
  top-margin =  #15
  bottom-margin =   #8
}

% ---------------------------------------

\include "lyrics.ily"
\include "music.ily"

% ---------------------------------------


\markup \vspace #0 % space between header and score

\score 
{
  <<
  \new ChordNames {\voice_intro_chords }
  
  \new Staff \with { instrumentName = "Intro" }
    { \global \voice_intro } 

  >>
}

\score 
{

  <<
  \new ChordNames {\voice_chords }
  
  \new Staff \with { instrumentName = "Vocal" }
  \new Voice = "stanza" { 
    { \global \voice_vocal } 
    }


  \new Lyrics \lyricsto "stanza" {
    \stanza_one_first \stanza_second \stanza_third
  }
  \new Lyrics \lyricsto "stanza"
    \stanza_one_second

  \new Lyrics \lyricsto "stanza" {
    \stanza_four_first \stanza_fifth \stanza_seventh
  }
  \new Lyrics \lyricsto "stanza" {
    \stanza_four_second
  }
    
  \new Lyrics \lyricsto "stanza" {
    \stanza_sixth 
  }
  
  \new Lyrics \lyricsto "stanza" {
    \stanza_sixth_second
  }

  >>


  \layout { }
  %\midi { \tempo 2=120 }
}
