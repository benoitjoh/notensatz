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
  f8^"1" 8 8 8 g8 8 f4 a8 8 8 f d d a,4 bes, \triole{a,8 bes, c} \break
  d8 d e d a, a,4.
  
  r2 f8 f g f d d bes,4 d8 d e d \break
  a, a, f,4g, \triole{g, 8 a, bes,} c8 a, e,8. cis,16 d,8 d,4. r2 f4 f \break
  g8 g f4 a16 a a4 f8 d d a,4 bes, \triole{a,8 bes, c} d8 d e d cis cis4. \break
  r4 e4 f4 g8 (f) d d bes,4 d8 d e d a, a, f,4 g, r16 a, bes, b, \break
  c8 a, e,8. cis,16 d,8 4. r2 r2^"32T"_\markup \italic"Solo Violin" 
  \mark #2
  \set Score.currentBarNumber = #65
  f8^"65" 8 8 8 g8 8 f4 a8 8 8 f d d a,4 \break 
  bes, \triole{a,8 bes, c} 
  d8 d e d a, a,4.
  r4 f4 f8 f g f d d bes,4 d8 d e d \break
  a,8 a, f,4 g, r16 g,a,bes, c8  a, e,8. cis,16 d,8 d,4. r2  f16 f8. f8 g \break
  g8 g f4 a8. 16 a8 f d d a,4 bes, \triole{bes,8 8 c} d8 d e d cis cis4.\break
  r2 f8 f g f d d bes,4 d8 d e d a, a, f,4 g,4  r16 a, bes, b,\break
  c8 a, e,8. cis,16 d,8 4. r2 
  r2^"32T"_\markup \italic"Solo Clarinet" \break
  
  \mark #3
  \set Score.currentBarNumber = #129
  
  f8 r r f8 g g f4 \triole{a8 a4} a8 f d d a,4 bes, \triole{a,8 bes, c} d8 d e d \break
  a,8 a,4.  r2 f4. f8 d d bes,4 \triole{d8 d4} e8 d a, a, f,4 \break
  g,4 \triole{g,8 a, bes,} c8 a, e,8. cis,16 d,8 d,4. r2 f16 f f4 f8 \break
  g8 g f4 a8 a a f d d a,4 bes, \triole{bes,8 8 c} d8 d e d cis cis 4. r2 \break
  f8 f g f d d bes,4 d8 d e d a, a, f,4\fermata g,\fermata 
    f,16 g, a, c a,4\fermata r8 cis,16 16 d,2\fermata \bar "."
}

chords_a = \chordmode {
   d2:m s d:m s g:m s a:7  s d:m g:m c2 f g:m a:7 d:m s
   d:m s  d:m7 s g:m s a:7 s d:m g:m c f g:m a:7 d:m s
}
   
chords_b = \chordmode {
   d:m s2 d:m s g:m s d:m s d:m g:m c f g:m a:7 d:m s
   d:m s d:m s g:m s a:7 s d:m g:m c f g:m a:7 d:m s 
}
   
chords_c = \chordmode {
   d:m s d:m s g:m s a:7 s d:m g:m c f g:m a:7 d:m s
   d:m s2 d d:7 g:m s a:7 s
   d:m g:m c f g:m a:7 d:m
}


