\version "2.20.0"


global = {
  \key a \minor
  \time 4/4
}

voice_vocal = \fixed c' { 
  \repeat volta 2 {
  e4. f8 gis4 a b c' dis' c'8 b b1~ b1  \break
  e4. f8 gis4 a b c' dis' c'8 b b1~ b1  \break
  c'4 b8 c' b4 a b a8 b a4 gis gis 1~ 1 \break
  b4 a8 b a4 gis gis f8 gis f4 e 
    }
  \alternative {
    { e1~ 1 }{ e1~ e8 e dis e f fis g gis }
    }
  \break
  \repeat volta 2 { 
    a1~ a2. g8a b1~ b2. a8 b  \break
    c'2. b8 c' dis'2. c'8 dis' e'1~ 1  \break
    f'4 e'8 f' e'4 d'  e' d'8 e' d'4 c' b1~ 1 \break d'4 c'8 d' c'4 b b a8 b gis4 f  
    }
  \alternative {
    { e1~ e8 e dis e f fis g gis }{ e1~ 1 }
    }
    % \bar "||"      r8^\markup \italic"Coda" e dis e f fis g gis r1
  \bar "|."
}

voice_chords = \chordmode { 
  \repeat volta 2 { 
    e1 s2 f2 e1 s e s2 f2 e1 s
    d1:m s e s d:m s
    }
    \alternative {
      { e1 s  }{ e1 s  }
    }
    \repeat volta 2 { 
      a1:m s g s f f:7 e s d:m s e s d:m s
    }
    \alternative {
      { e1 s  }{ e1 s  }
    }
 }