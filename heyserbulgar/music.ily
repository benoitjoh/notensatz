\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \time 2/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}
\bar check

straigt = \markup {\musicglyph "scripts.caesura.straight"} 

voice_vocal_a = \fixed c' { 
  \mark #1 r8 d8 fis g 
  \set Score.currentBarNumber = #2
  \repeat volta 2 {
    a \segno a a4 \triole{a8 bes c'} \triole{bes a g} 
    a a fis4   
    r8 d fis g a4
    r8 d'~ \triole{d'8 a c'} \triole{bes a g} \break
    a8 a fis4 r8 d fis g   
    a g bes a g fis es d g g c4
    r8 c es g   
    c'16 d' es' d' c' bes a g a bes c' bes a g fis es 
    fis g a g fis es d c  
    d8 d fis g a g bes a g fis es d 
    
    g g c d es2  
    \triole{c'8 bes a} \triole{bes a g}
    \triole{a g fis} \triole{g fis es} d2 | 
  }
  \alternative { {r8 d fis g} {r8 d g bes} }  
}

voice_chords_a = \chordmode {
  s2
  \repeat volta 2 {d2 d4 c:m d2 s d d4 c:m d2 s d d c:m s c:m s d4 c4:m d2 d s c:m s c4:m g:m d c:m d2}
  \alternative { {d2} {d2} }
}

voice_vocal_b = \fixed c' { 
  \repeat volta 2 {
    \mark #2 cis'8 d'4 d'8 d'16 cis' bes8 bes4 
     a16 c' bes8 bes bes 
    a8. \startTrillSpan g16 \stopTrillSpan fis8 g fis g a bes c' a16 c' 
    \triole{bes8 a g}  a2   r8  d g  bes 
    cis'8 d'4 8 d'16  cis' bes8 bes4 a16 c' bes8 bes bes 
    a8. \startTrillSpan g16 \stopTrillSpan fis8 g   fis g a bes c'8. bes16 c' bes a g |fis8. es16 fis16 es d c 
  }
  \alternative { {d8 d g bes} {d4 r8 a,8} }  
}

voice_chords_b = \chordmode {
  \repeat volta 2 {g2:m s s s d c:m d s g:m s s s d c:m d4 c:m}
  \alternative { {d4 d:7} {d2} }
}

voice_vocal_c = \fixed c' { 
  \repeat volta 2 {
    \set Score.currentBarNumber = #44
     \mark #3 d8 r8 r4^\straigt bes8 r^\straigt \triole{bes8 a g} 
     \triole{fis8 g a} \triole{g8 fis es}   fis8 g gis a d8 r r4|
     d8 r \triole{bes8 a g} \triole{fis8 g a} \triole{bes a g}  
     \triole{a g fis} \triole{es d c } 
     d8 r8 r4^\straigt d8 r^\straigt \triole{bes8 a g} fis8 g gis a   
     bes8 c'4.~  c'2~ c'2~ c'2 
     c'16 d' es' d' c' bes a g 
     a bes c' bes a g fis es  
     fis g a g fis es d c
    
  }
  \alternative { {d4 r8 a,8} {d4 d8 des} } 
}

voice_chords_c = \chordmode {
  \repeat volta 2 {d2 d s d4 a:7 d2 s d4 g:m d c:m d2 s d4 a:7 c2:m s s s c:m s d4 c:m}
  \alternative { {d2} {d2} }
}


voice_vocal_d = \fixed c' { 
  \repeat volta 2 {
    \mark #4 c4 d8 es \triole{es8 d c} g4   \triole{fis8 g a} \triole{g8 fis es}
    d8 c fis g c4 d8 es  
  }
  
  \alternative { 
    { d8 c c'4 \triole{c'8 bes a} \triole{bes8 a g} 
      \triole{a8 g fis} \triole{g8 fis es} 
    } 
    { d8 c g4
      \triole{fis8 g a8} \triole{g8 fis es}
      d8 d8 fis g^"D.S." \bar "."
    } 
  }
}

voice_chords_d = \chordmode {
  \repeat volta 2 {c2:m s s s s}
  \alternative { {c2:m c4:m g:m d c:m} {c2:m d4 c:m d2} }
}