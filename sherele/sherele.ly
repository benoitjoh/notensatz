% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #4.4 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------
\include "music.ily"


voice_vocal_intro = \fixed c' { 
  \set Score.currentBarNumber = #1
  \clef bass
  \mark \markup \italic Intro
  \repeat unfold 4 {b,,,4. fis,,8 b,,4 fis,,4}
  \break
}

voice_vocal_a = \fixed c' { 
  \set Score.currentBarNumber = #5
  \clef violin
  \mark \box_a
  \repeat unfold 2 {b8 a gis a b4 c' b1 dis'8 c' b c' dis'4 e' fis'1
  fis'8 g' a'4 4 4 a'8 g' g' fis' fis' e' e' dis' dis' e' fis'4 4 4 
  fis'8 e' e' dis' dis' c' c' b  a gis a b c' e' dis' c' b1 \break} 
  \bar "||"
  \break
}

voice_vocal_b = \fixed c' { 
  \set Score.currentBarNumber = #25
  \clef violin
  \mark \box_b
  b8 a gis a b4 c' b1 dis'8 c' b c' dis'4 e' fis'1
  fis'8 g' a'4 4 4 a'8 g' g' fis' fis' e' e' dis' dis' e' fis'4 4 4 
  fis'8 e' e' dis' dis' c' c' b  a gis a b c' e' dis' c' b1  r4 b'8 8 8 8 8 g' \break 
  \break
}

voice_vocal_c = \fixed c' { 
  \mark \box_c 
  \set Score.currentBarNumber = #36
  \repeat volta 2 {
    e'4. b16 e' g'4. e'16 g' c''1 
    b'8 a' a' g' g' fis' fis' e' fis'1
    fis'4. g'8 a'4. b'8 c''1
    b'8 a' a' g' g' fis' fis' e'
  }
  \alternative { 
    {g'2 \triole{ b'8 bes' g'} \triole{ g' fis' e'} } 
    {e'4. fis'16 g' e'4 r4} 
  } \break
}

voice_vocal_d = \fixed c' { 
  \set Score.currentBarNumber = #45
  \mark \box_d
  fis'8 e' dis'4 8 c' b4 b8 e' dis' e' fis' r b' r 
  fis'8 e' dis'4 8 c' b4 c'8 b a e' b2 \break
  fis'8 e' dis'4 8 c' b4 b8 e' dis' e' fis' r b' r 
  fis'8 e' dis'4 8 c' b4 c'8 b a e' b2 
  \bar "||"
  \grace {fis'16 gis' a'} b'4 r fis' r b2 r2
  \bar "."
  \break
}


ba = \chordmode {b2.:7 a4:m }

voice_chords_intro = \chordmode {
  \repeat unfold 4 {\ba}
}

voice_chords_a = \chordmode {
  \repeat unfold 2 {\ba b1:7}
  b1:7 a:m b:7 a:m a2:m c b1:7
  \repeat unfold 2 {\ba b1:7}
  b1:7 a:m b:7 a:m a2:m c b1:7
}

voice_chords_b = \chordmode {
  \ba b1:7 \ba b1:7 b1:7 a:m b:7 a:m b:7 b:7 b:7
}

voice_chords_c = \chordmode {
  \repeat volta 2 {
  e2:m e2:m e1:m e2:m e2:m b1:7 b2:7 b2:7 a1:m b:7 
  }
  \alternative { 
    {e2:m b4:7 c} 
    {e4:m a:m6 e2:m} 
  }
}

voice_chords_d = \chordmode {
  b1:7 b1:7 b1:7 a2:m6 b2:7 b1:7 b1:7 b1:7  a2:m6 b2:7
  e2:m b:7 e1:m
}


% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \voice_chords_intro
      \voice_chords_a
      \voice_chords_b
      \voice_chords_c
      \voice_chords_d
    }
    
  \new Staff \with {instrumentName = "Violin" }
    {
     \global
     \voice_vocal_intro
     \voice_vocal_a
     \voice_vocal_b
     \voice_vocal_c
     \voice_vocal_d
    }
  >>
  \layout { }
  \midi { \tempo 4=120 }
}