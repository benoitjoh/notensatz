\version "2.20.0"
\include "../_common/makros.ily"

global = {
  \time 2/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet
}

voice_vocal_a = \fixed c'' { 
  %\set Score.currentBarNumber = #1
  \clef violin
  r2^"12T"_"Intro"
  \set Score.currentBarNumber = #1
  \mark #1
  bes,8^"1" 8 8 8 c8 8 bes,4 d8 8 8 bes, g, g, d,4 es, \triole{d,8 es, f,} \break
  g,8 g, a, g, d, d,4.
  
  r2 bes,8 bes, c bes, g, g, es,4 g,8 g, a, g, \break
  d, d, bes,,4c, \triole{c, 8 d, es,} f,8 d, a,,8. fis,,16 g,,8 g,,4. r2 bes,4 bes, \break
  c8 c bes,4 d16 d d4 bes,8 g, g, d,4 es, \triole{d,8 es, f,} g,8 g, a, g, fis, fis,4. \break
  r4 a,4 bes,4 c8 (bes,) g, g, es,4 g,8 g, a, g, d, d, bes,,4 c, r16 d, es, e, \break
  f,8 d, a,,8. fis,,16 g,,8 4. r2 r2^"32T"_\markup \italic"Solo Violin" \break
  \mark #2
  \set Score.currentBarNumber = #65
  bes,8 8 8 8 c8 8 bes,4 d8 8 8 bes, g, g, d,4 \break 
  es, \triole{d,8 es, f,} 
  g,8 g, a, g, d, d,4.
  r4 bes,4 bes,8 bes, c bes, g, g, es,4 g,8 g, a, g, \break
  d,8 d, bes,,4 c, r16 c,d,es, f,8  d, a,,8. fis,,16 g,,8 g,,4. r2  bes,16 bes,8. bes,8 c \break
  c8 c bes,4 d8. 16 d8 bes, g, g, d,4 es, \triole{es,8 8 f,} g,8 g, a, g, fis, fis,4.\break
  r2 bes,8 bes, c bes, g, g, es,4 g,8 g, a, g, d, d, bes,,4 c,4  r16 d, es, e,\break
  f,8 d, a,,8. fis,,16 g,,8 4. r2 
  r2^"32T"_\markup \italic"Solo Clarinet" \break
  
  \mark #3
  \set Score.currentBarNumber = #129
  
  bes,8 r r bes,8 c c bes,4 \triole{d8 d4} d8 bes, g, g, d,4 es, \triole{d,8 es, f,} g,8 g, a, g, \break
  d,8 d,4.  r2 bes,4. bes,8 g, g, es,4 \triole{g,8 g,4} a,8 g, d, d, bes,,4 \break
  c,4 \triole{c,8 d, es,} f,8 d, a,,8. fis,,16 g,,8 g,,4. r2 bes,16 bes, bes,4 bes,8 \break
  c8 c bes,4 d8 d d bes, g, g, d,4 es, \triole{es,8 8 f,} g,8 g, a, g, fis, fis, 4. r2 \break
  bes,8 bes, c bes, g, g, es,4 g,8 g, a, g, d, d, bes,,4\fermata c,\fermata 
    bes,,16 c, d, f, d,4\fermata r8 fis,,16 16 g,,2\fermata \bar "."
}

chords_a = \chordmode {
   g2:m s g:m s c:m s d:7  s g:m c:m f2 bes c:m d:7 g:m s
   g:m s  g:m7 s c:m s d:7 s g:m c:m f bes c:m d:7 g:m s
}
   
chords_b = \chordmode {
   g:m s2 g:m s c:m s g:m s g:m c:m f bes c:m d:7 g:m s
   g:m s g:m s c:m s d:7 s g:m c:m f bes c:m d:7 g:m s 
}
   
chords_c = \chordmode {
   g:m s g:m s c:m s d:7 s g:m c:m f bes c:m d:7 g:m s
   g:m s2 g:m g:m c:m s d:7 s
   g:m c:m f bes c:m d:7 g:m
}


