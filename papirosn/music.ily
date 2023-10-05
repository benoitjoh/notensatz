\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \key a \minor
  \time 4/4
}

\addQuote "variant" { s1*7 s2. s8 s16 d'16 } % the small "b" in bar eight
voice_vocal = \fixed c' { 
   \clef treble
   s8*7 
   \mark \box_a
   a,8 
   \tempo "Allegro"
   \set Score.currentBarNumber = #1
   \repeat volta 2 {
     a, c c e e a a b c' c' b a e4. r8
     c'8 b b a a g g f \break 
     f e e d d4. d8 
     d8 e e b b a a gis gis f f e e d d c \break 
     c d d c e d4 \stemDown c16 
     \cueDuring "variant" #UP { b,16 } 
     \stemNeutral
     }
     
   \alternative { {e2. r8 a,8 } { a,2~ a,8 e a b}}  
   \break
   %refrain
}

voice_refrain = \fixed c'{
   \set melismaBusyProperties = #'() % detach slurs from text!
   \mark \box_b
   \repeat volta 2
   { c'4.^\mark_refrain b8 c' b a gis a4 e2. a8 gis a gis a g f e \break
   e (f) d2. 
   d8 e e b b a a gis gis f f e e d d c c d d c e d c b, } 
   \alternative { { e2~ 8 e a b   } { a,1 }} 
   \unset melismaBusyProperties
}

voice_bass = \fixed c {
  \clef "bass"
  s1
  \repeat volta 2 { a2 a,2 a1 a4 g f e d1 e e4 ~e f8 e f e f2 e} 
  \alternative {{a1} {a,2 r}}
}

voice_bass_refrain = \fixed c {
  \repeat volta 2 { a4 a e e a a a a8 e a4 g f e d d d d8 d,  e,4 e e e8 e, e4 e e e8 e,8 f,2 e,  } 
  \alternative {{a,2 r} {a,1}}
}

voice_chords = \chordmode {
  s1 
   \repeat volta 2
   { a1:m a:m a2:m a:7 d4:m a4:7 d2:m 
     e1:7 e1:7 f2 e:7 } 
   \alternative { { a1:m} { a1:m }}  
}

voice_chords_refrain = \chordmode {
   \repeat volta 2
   { a2:m e:7 a1:m a2:m a2:7 d1:m 
     e1:7 e1:7 f2 e:7 } 
   \alternative { { a2:m e:7 } { a1:m }}  
}