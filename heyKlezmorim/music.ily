\version "2.20.0"

global = { 
  \time 4/4 
  \key c \minor  }
voice_vocal = \transpose c c' {
  g4. c8 as g f c es2 c2 g4. g8 bes as g f g2. r4 \break 
  bes4. g8 c' bes as g f2 c2 g4. g8 bes as g f g2. r4 \break
  bes4. bes8 c' bes as g f4 (c') c2 g4. as8 g f es d c2. r4
}

voice_chords = \chordmode { 
  c2:m f2:m c1:m c2:m bes2:7 es1
  es2 as f2:m c2:m s2 bes:7 es1
  es2 as f2:m c2:m c2:m g2:7 c1:m
}