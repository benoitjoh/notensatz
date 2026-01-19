\version "2.20.0"

% -- music and text ------------------------------------------------
global = {
  \key a \minor
  \time 3/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}

voice_vocal_stanza =  \fixed c' { 
  \mark #1
  c'4 b4. a8 | a4 e4. e8 | g4 f4. e8 | e4 e r8 e8 |
  e4 f4. e8 | e4 b,4. b,8 | \break
  b,8 b, c4 d | f e r | 
  \mark #2
  
  c'4 b4. a8 | a4 f2 |
  d'8 c' c' b b a | a4 e2|\break
  c'4 a8 a b c' | b4 b4. e8 | c'8 b a4 gis4| a2 r4 |
  c'4 b4. a8 | a4 f2| \break
  d'8 c' c' b b a | a4 e2| c'4 a8 a b c' | b4 4. e8 |
  a8 b gis4 b | a2 r4 \break
  \mark #3
  a,8 b, c d e f | d2. | a4 f d | c2. | a,8 b, c d e f |e2. | 
  e8 f e d c d | e2. 
  a,8 b, c d e f | d2. | a4 f d | c2. | a,8 b, c d e f |e2. | 
  e8 f e d c b, | a,2.~ | a,4 r2 
}


\markup \vspace #3 % space between header and score

% -- music and text ------------------------------------------------

chords_stanza = \chordmode { 
  a2.:m a:m a:m e:7 e:7 e:7 e:7 a:m a:7 d:m d:m a:m a:m e:7 e:7 a:m a:7 d:m d:m a:m a:m e:7 e:7 a:m
  
  s2. d:m s a:m s e:7 s a:m s d:m s a:m s e:7 s a:m
}
