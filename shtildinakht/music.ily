\version "2.20.0"

global = {
  \key c \minor
  \time 2/4
  }

voice_chords = 
  \chordmode 
    { 
    c2:m f:m bes es \break
    es as4 bes es2 es \break
    c:m f:m bes es \break
    g f4:m g4:7 c1:m c2:m 
    }


voice_vocal = \fixed c' {
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

voice_clarinet = \fixed c' {
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

  <c es g c'>2   (<f, c' f as>  <bes, d f bes>  <bes, es g bes>)
  <bes, es g bes> as4 bes4 <bes, es g bes>2 r 
  \repeat volta 2 {
    <c es g c'>2 (<f, c f as>   <bes, d f bes> <es g bes>)
    <g, bes, d g>4 r <f, c' f as>4 <g, bes d f g> 
    }
  \alternative {
      {<c es g c'>2~  | <c es g c'>4 r  }
      {<c, es g c>2}
    }  
  
  }
