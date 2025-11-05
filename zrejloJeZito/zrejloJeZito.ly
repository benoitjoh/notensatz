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

%\include "music.ily"

global = {
  \time 2/4
  \key g \minor
}


intro = {r2^\markup \bold \italic "Intro" r2 r2}
intro_chords = \chordmode {g2:m g2:m g2:m}

line_a = {
  bes,4 a,8 g, | bes,4 a,8 g, | r8 g fis g | d4 r |
  es4 d8 c es4 d8 c | g g fis g | d4 r |
  
}
line_a_chords = \chordmode {s1 g1:m  c1:m g1:m}

line_b_a = {
  d4 g8 a | bes4 a8 g | f f c es | d4 r^"B°" |
}
line_b_a_chords = \chordmode { g2:m es f bes4 d:7}

line_b_b_a = {
  g4 c8 es | d4 g,8 d |
}
line_b_b_b = {
   c c bes, a,  |g,2|
}

line_b_b_a_chords = \chordmode { c2:m g2:m }
line_b_b_b_chords = \chordmode { d:7 g:m }

viol_bridge = {r2^\markup \bold \italic "Violine" r2 r2}

  

voice_vocal_one = \fixed c' { 
  \intro
  ^\markup \bold \italic "        Stanza 1"
  %\set Score.currentBarNumber = #1
  \line_a \break
  ^\markup \bold \italic "Refrain 1" 
  \line_b_a 
  \repeat volta 2 {
    \line_b_b_a 
     
  }
  \alternative {
    { \line_b_b_b }
    { \line_b_b_b }
  }
}

chords_one = \chordmode {
  \intro_chords
  \line_a_chords 
  \line_b_a_chords
  
  \repeat volta 2 {\line_b_b_a_chords }
  
  \alternative {
    { \line_b_b_b_chords }
    { es4 f g2:m }
  }
}

voice_vocal_two = \fixed c' { 
  \viol_bridge
  ^\markup \bold \italic "           Stanza 2"
  %\set Score.currentBarNumber = #1
  \line_a \break
  ^\markup \bold \italic "Refrain 2" 
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

voice_vocal_three = \fixed c' { 
  ^\markup \bold \italic "Refrain 2" 
  \repeat volta 2 {
    \line_b_a
    \line_b_b_a 

  }
  \alternative {
    { \line_b_b_b }
    { \line_b_b_b }
  }
}

chords_three = \chordmode {
  \repeat volta 2 { \line_b_a_chords \line_b_b_a_chords }
  \alternative {
    { \line_b_b_b_chords }
    { es4 f g2:m}
  }
  
}

voice_solo_clarinet = \fixed c'{ 
  r8^\markup \bold \italic "Clarinet/Violine" 
  d'8 cis' d' |
  bes8 bes16 a g8 g16 a | bes c' c' bes bes a g fis | g a bes c' g8 g16 a \break bes8 bes16 c' d'8 es' 
  d'16 c' d' es' c'8 d'16 c' | c'16 bes bes a a g g fis g8 g'16 d' bes a bes c' 

}
chords_solo_clarinet = \chordmode { s2 g2:m d g:m bes c:m d:7 g:m}


voice_solo_git = \fixed c'{ 
  g16^\markup \bold \italic "Guitar"  r
  
  \triole {cis'16 d' d'}  d'8. bes16 |cis' d'8 d'32 cis' d' 8 8 |
  r16 bes c' des' d'16 bes' a'16. g'32 | d'16 d'8 d'32 cis' d'8 8  |
   c'8. c'16 d'8 es' | c'8. c'16 d'8 es' 
   r2 | r2 |
   r2 | r2 |
   r2 | r2 |
   c'8.bes16 c' bes a g | a8. g16 a a bes a  |
    fis8. g 16 a8 8  | a8. bes16 c' 8 es' |
   \break 
}
chords_solo_git = \chordmode {
  g2:m g2:m g2:m g2:m c2:m c2:m g2:m g2:m c2:m c2:m g2:m g2:m c2:m c2:m d:7 d:7
}


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
      \chords_solo_git
      \chords_three
    }
    
  \new Staff \with {instrumentName = "Vocal" }
    {
     \global

     \voice_vocal_one \break
     \voice_vocal_two \break
     \voice_solo_clarinet \break
     \voice_solo_git \break
     \voice_vocal_three
    }
    
%  \new Staff \with {instrumentName = "Kla" }
%    {
%     \global
%     \key g \minor
%     \clarinet
%    }
    

  >>
  \layout { }
  \midi { \tempo 4=40 }
}