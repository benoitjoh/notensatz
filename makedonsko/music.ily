\version "2.20.0"

global = {
  \key g \minor
  \time 7/8
}

voice_chords = \chordmode {
  g2..:m s2.. c2..:m  g2..:m
  g2..:m s2.. d2..:7  g2..:m
  \repeat volta 2 {g2..:m c2..:m f2..  bes2..
  as2.. g2..:m d2..:7  g2..:m}
  
}
voice_vocal = \fixed c' { 
  g4^"Strophe" g'8 f'4 g' f' g'8 d'8~4. es'4 d'8 c'4 es'4 d'2.. \break
  g4 g'8 f'4 g' f' g'8 d'8~4. d'4 c'8 bes4 a4 g2.. \break
}

voice_ref_a_one = \fixed c' { 
  \repeat volta 2 { g'4.^"Refrain A1" d'4 (f'4) es'4 (d'8) \once  \slurDashed c'4. (c'8) 
  es'4 d'8 c'4 es'4 d'2.. \break
  es'4 d'8 c'4 es'4 d'8 c'4 bes4 (c'4) 
  d'4 c'8 bes4 a g2..}
}

voice_ref_a_two = {
}

voice_ref_b = \fixed c' { 
  bes8^"Refrain B" a8 g8 g4 d'8 d'8 d'4. c'2 
  r4 f8 f  a bes c' c'4 bes8 bes 4 a4  \break
  bes8 a8 g8 g4 d'8 d'8 d'4. c'4  bes8 c'
  d'4. d'8 e'8 fis'4 g'2..
}

voice_ref_b_second = \fixed c { 
  s2.. r8 r8 es'8 8 d' d' c' c'2 s4. r8 r8 f' f' es' es' d' 
  d'2 s4. r8 r8 es'8 8 d' d' c' d'4 8 e'4 fis'4 g'2.. 
  
}
voice_chords_ref_b = \chordmode {
  g2..:m c2..:m f2..  bes2..
  g2..:m c2..:m d2..:7  g2..:m
  
}