% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/makros.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #5 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"

intro = {r2^\markup \bold \italic "Intro" r2 r2}
intro_chords = \chordmode {g2:m g2:m g2:m}

line_a = {
  bes,4 a,8 g, | bes,4 a,8 g, | r8 g fis g | d4 r |
  es4 d8 c es4 d8 c | g g fis g | d4 r |
  
}
line_a_chords = \chordmode {g1:m g1:m  c1:m g1:m}

line_b_a = {
  d4 g8 a | bes4 a8 g | f f c es | d4 r |
}
line_b_a_chords = \chordmode { g2:m es f bes4 b:dim}

line_b_b_a = {
  g4 c8 es | d4 g,8 d |
}
line_b_b_b = {
   c c bes, a,  |g,2|
}

line_b_b_a_chords = \chordmode { c2:m g2:m }
line_b_b_b_chords = \chordmode { d:7 g:m }

viol_bridge = {r2^\markup \bold \italic Viol r2 r2}

  

voice_vocal_one = \fixed c' { 
  \intro
  ^\markup \bold \italic "        Stanza 1"
  %\set Score.currentBarNumber = #1
  \line_a \break
  \line_b_a 
  \repeat volta 2 {
    \line_b_b_a 
    \line_b_b_b 
  }
}

chords_one = \chordmode {
  \intro_chords
  \line_a_chords 
  \line_b_a_chords
  
  \repeat volta 2 {\line_b_b_a_chords \line_b_b_b_chords}
}

voice_vocal_two = \fixed c' { 
  \viol_bridge
  ^\markup \bold \italic "           Stanza 2"
  %\set Score.currentBarNumber = #1
  \line_a \break
   
  \repeat volta 2 {
    \line_b_a
    \line_b_b_a 

  }
    \alternative {
    { \line_b_b_b }
    { \line_b_b_b }
  }
}

chords_two = \chordmode {
  \intro_chords
  \line_a_chords 
 
  
  \repeat volta 2 { \line_b_a_chords \line_b_b_a_chords }
  \alternative {
    { \line_b_b_b_chords }
    { es4 f g2:m}
  }
  
}

voice_solo_clarinet = \fixed c'{ 
  r8 d'8^\markup \bold \italic "Clarinet" cis' d' s2 * 7
}
chords_solo_clarinet = \chordmode { s2 c2:m d g:m es c:m d g:m}

voice_solo_git = { s2^\markup \bold \italic "Guitar" s2 * 15}
chords_solo_clarinet = \chordmode { s2 c2:m d g:m es c:m d g:m}


% kla: 8t git 16t

clarinet = \fixed c' \transpose c bes {
  r2 r2 r2 r2 r2 r2 r2 r2r2 r2 r2 
  c2 a,2 d2 e4 \triole {dis8 d cis} 
  d2 c b, a,4 a,4 b, cis d2 c2
}
% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \chords_one
      \chords_two
      \chords_solo_clarinet
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global
     \key g \minor

     \voice_vocal_one \break
     \voice_vocal_two \break
     \voice_solo_clarinet \break
     \voice_solo_git
    }
    
%  \new Staff \with {instrumentName = "Kla" }
%    {
%     \global
%     \key g \minor
%     \clarinet
%    }
    

  >>
  \layout { }
  \midi { \tempo 4=95 }
}