\version "2.20.0"

\include "../_common/makros.ily"


global = {
  \key b \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
  \slurDashed
  <>~^\box_a fis4 fis fis fis2 fis4 fis (e4.) d8 \tieDashed cis2~ cis4 e2 e4 e2 e4 e (d4.) cis8 b,2. \break
  b,4 (d) fis b2 b4 d' cis'4. b8 fis2. a4 (g4.) e8 cis2 (cis4) e4 d4. cis8 b,2.\bar "||" \break
  
}

voice_refrain = \fixed c' {  
  fis4^\box_b fis^\mark_refrain fis fis fis fis fis e4. d8 cis2 cis4 e e e  \break
  e e e e d4.cis8  b,2 4 b, d fis b2 4  \break
  d'4 cis'4. b8 fis2 4 a g4. e8 cis2 4 e d4. cis8 b,2. \bar "|."
}

voice_refrain_second= \fixed c' {
  d4 d d d d d d d4 b,4 cis2 cis4 cis4 4 4 4 4 4 4 4 fis,  b,2 b,4 
  d4 d cis b,2 b,4 b, d4. fis8 b2 b4 g g4. cis8 fis2 fis4 fis,4 gis,4. ais,8 b,2.
  }


voice_chords = \chordmode {
  \override ChordName.font-size = #-1
   b2.:m s2. b2.:m s2.fis fis:7 s2. b2.:m
   s4*12 e2.:m fis:7 s2. b:m
}
