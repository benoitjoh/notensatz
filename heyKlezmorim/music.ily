\version "2.20.0"

global = { 
  \time 4/4 
  \key e \minor  }
voice_vocal = \transpose c c' {
  b4. e8 c' b a e g4 e2. b4. b8 d' c' b a b2. r4 \break 
  d'4. b8 e' d' c' b a4 e2 (g4) b4. b8 d' c' b a b2. r4 \break
  d'4. d'8 e' d' c' b a (e') e2 (g4) b4. c'8 b a g fis e2. r4
}

voice_chords = \chordmode { 
  e1:m s1 s2 d2:m7 g2. b4:7
  g2 c a2.:m e4:m s2 d:7 g2. b4:7
  g2 c a4:m e2.:m b1:7 e1:m
}