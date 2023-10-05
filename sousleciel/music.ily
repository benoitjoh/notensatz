\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \time 3/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
}


voice_intro = \transpose c c \fixed c' { 
   \clef treble
   \key e \minor
   e2. a g fis e a g fis \bar "."
   
}

voice_intro_chords = \transpose c c \chordmode {
  e:m a:m e:m/+g b:7/+fis e:m a:m e:m/+g b:7/+fis
}

voice_vocal = \transpose c c \fixed c' { 
   \clef treble
   \key e \minor

   \mark \box_a 

   \tempo "Allegro"
   \set Score.currentBarNumber = #1
    { 
      \repeat volta 2 {b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a g fis e2.~e~e~ }
      \alternative { {e4 r r} {fis4 g fis }}  
      \break
      
      \set Score.currentBarNumber = #17
      \mark \box_b
      e2. e e fis4 g fis e2. e e fis4 g fis  \break
      e2 fis4 g2 a4 b8 r c'4 d' c' b a b2.~b~b~b4 r r  \break
      
      \mark \box_as 
      b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a gis fis gis2.~gis~gis4\segno r b b gis e \break
      
      \key e \major 
      \mark \box_c
      dis2. dis~2 b4 b gis e d2. d~d2 b4 b gis e \break 
      cis2. 2.~2 a4 a e cis c2.~2.~2. e4 d c \break 
      b,2 4 bis,2 4 cis2 4 dis2 4 e2 4 fis2 4 gis2 r4 a gis a \break
      b2.~2.~4 r b cis' a fis b2.~b~b~ b2 r4 \bar "|" \break
      \bar "."
      
     }
}    

voice_chords = \transpose c c \chordmode {
  \set majorSevenSymbol = \markup { maj-7 }
  \set slashChordSeparator = \markup  { "/" }
  \repeat volta 2 { e2.:m s e:m s a:m7 s a:m7 a:m/e b:7 s b:7 s e:m a:m e:m/g }
  \alternative { {s} {s }} 
  
  a:m a:m/+e a:m d:7 g s g g/+b c a:m7 d:7 s b:7 b:7/+a e:m/+g b:7/+fis 
  e:m s e:m s a:m7 s s s  b:7 s b:7 s e s s s
  e:maj7 s s s e:7 s s s a:maj7 s s s a:m s s s
  e gis:7 cis:m gis:7 cis:m b e fis:m e s s a  b:7 b:7/+a e:m/+g b:7/+fis
  

}  
  
 voice_coda = {\key e \minor  a g fis  <e gis b>2. <d fis b>2. <e gis b>2.  <d fis b>2. <e gis b>4 r4 r r1 r1}
