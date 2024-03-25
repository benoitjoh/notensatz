\version "2.20.0"
\include "../_common/makros.ily"

global = {
  \time 4/4
  \key f \major
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  }

voice_vocal_a = \fixed c' { 
  \set Score.currentBarNumber = #1
  \clef violin
  \mark \box_a 
    r2 r4 f | a8 bes c'4 4 4 des'2. c'8 bes | a bes c'4 des'8 c' bes c' | bes8 a4. r4 f4 |
    a8 bes c'4 4 4 | es'2 ~8 des' c' bes | a bes c'4 des'8 c' bes c' | bes a4. r2| \break
    
}

voice_vocal_b = \fixed c' { 
  \mark \box_b 
  \set Score.currentBarNumber = #17
  \repeat volta 2 {
    f8 f'4 e'8 f'4 c' | des'4. es'8 f'4 es'16 des' c' bes | a8 bes4.~8 a8 ges a | 
  }
  \alternative { 
    { ges8 f4. r2} 
    { ges8 f4. r8 f8 des'16 c' bes8} 
  } \break
}


voice_vocal_c = \fixed c' { 
  \mark \box_c 
  \set Score.currentBarNumber = #17
  \repeat volta 2 {
    a1 | a1 | a8 bes c' a~a f ges es | f ges a bes c' f' c' bes f1| 
    bes2 r8 f des'16 c' bes8 | a8 bes c' a~a f ges es
  }
  \alternative { 
    { f2 r8 f des'16 c' bes8 } 
    { f2 r8 f' es'16 des' c' bes } 
  } \break
}

voice_vocal_d = \fixed c' { 
  \mark \box_d 
  \set Score.currentBarNumber = #17
  \repeat volta 2 {
    a8 bes c' a~a f8 ges16 f ges es | f8 ges a bes c' f' es'16 des' c' bes | a8 bes c' a~a f8 ges16 f ges es
  }
  \alternative { 
    { f8 4 c8 f c f4} 
    {f2. r4} 
  }\bar"|."
}




voice_chords_a = \chordmode {
   s1 f1 bes:m f2 fis2 f1 f es:m f2 fis2 f1
}

voice_chords_b = \chordmode {
  \repeat volta 2 {
  f1 bes:m f 
  }
  \alternative { 
    {f} 
    {f} 
  }
}
voice_chords_c = \chordmode {
  \repeat volta 2 {
    f1 bes:m f2. es4:m f1 f1 bes:m f2. es4:m   
  }
  \alternative { 
    {f1} 
    {f1} 
  }
}

voice_chords_d = \chordmode {
  \repeat volta 2 {
    f2. es4:m f2. es4:m f2. es4:m
  }
  \alternative { 
    {f1} 
    {f1} 
  }
}

