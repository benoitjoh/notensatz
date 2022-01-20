\version "2.20.0"

global = {
  \key c \minor
  \time 2/4
  }

voice_chords = 
  \chordmode 
    { 
    c2:m f:m bes es es as es es  c:m f:m bes es g f4:m g4:7 c1:m c2:m 
    }


voice_vocal =     
  \transpose c c' {
    \clef "treble"
    g4. es8 as g f es f4. es16 d es4. r8
    \break
    bes4. g8 c' bes es f g2~ g8 r8 g g
    \break
    
    \repeat volta 2 {
      c'4  bes8 c' as as g c f4. es16 d es4. r8
      \break
      d4 g8 g bes as g f 
      }
    \alternative {
       { c'2~ c'8 r g  g }
       { c4 r4 \bar "|."  }
      }
     
  }

voice_clarinet = 
  \transpose c c' {
    \clef "treble"
    c4. c8 d2 d2 es
    g4. es8  as8 g es f g2 r 
    \repeat volta 2 {
      es2 c  d  g  
      bes,4 r c4 g 
      }
    \alternative {
       { c2~ | c8 r es,  es }
       {es2}
       }  
   }


voice_accordion = {
  \clef "bass"

  <c es g c'>4 r   <f, c' f as> r  <bes, d f bes> r  <bes, es g bes> r
  <bes, es g bes> r <as, c es as> r <bes, es g bes> r r2
  \repeat volta 2 {
    <c es g c'>4 r <f, c f as> r  <bes, d f bes> r <es g bes> r 
    <g, bes, d g> r <f, c' f as>4 <g, bes d f g> 
    }
  \alternative {
      {<c es g c'>2~  | <c es g c'>4 r  }
      {<c, es g c>2}
    }  
  
  }
