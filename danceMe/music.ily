\version "2.20.0"

% -- music and text ------------------------------------------------
global = {
  \key a \minor
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}

voice_vocal_stanza =  \fixed c' { 
  \mark #1
  r4 r8 g,8 g8 f r8 es16 d | f1 |
  r4 r8 g,8 f8 es r8 d16 c | es1 | \break
  r4 r8 g,8 es8 d r8 c16 b, | d1 |
  r4 r8 g,8 d8 d r8 d16 c | c8 g8~2. | \break
  
  r4 r8 g,8 g8 f r8 es16 d | f1 |
  r4 r8 f8 f8 es r8 d16 c | es1 | \break
  r4 r8 es8 es4 c | d2. r8 g,8| 
  d2. r8 d8| es4 b, c8 g4.~g1 | \break

}

voice_refrain =  \fixed c' {
  \mark #2
  r4^\markup \italic "bridge" c d es | f f8 f2 f8 | g8  f4. es4 f| as g8 g2 f8  | g2. g4  
  a4 a a a b a g a c'  b b bes b1 \break

}

chords_stanza = \chordmode { 
  s1 f1:m g:7 c:m s g:7 s c:m 
  s1 f1:m g:7 c:m s g s s2 c:m s1
}
chords_refrain = \chordmode {  
  s bes bes es s a a g g:7
 }