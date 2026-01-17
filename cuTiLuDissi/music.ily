\version "2.20.0"

% -- music and text ------------------------------------------------
global = {
  \key d \minor
  \time 3/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}

voice_vocal_stanza =  \fixed c' { 
  \mark #1
  f'4 f'4. e'8 | e'4 d'4. d'8 | e'4 d'4. g8 | bes4 a r8 a8 |
  a4 bes4. a8 | a4 e4. e8 | \break
  e8 e f4 g | bes a r | 
  \mark #2
  
  f'4 e'4. d'8 | d'4 bes2 |
  g'8 f' f' e' e' d' | d'4 a2|\break
  f'4 d'8 d' e' f' | e'4 e'4. a8 | f'8 e' d'4 cis'4| d'2 r4 |
  f'4 e'4. d'8 | d'4 bes2| \break
  g'8 f' f' e' e' d' | d'4 a2| f'4 d'8 d' e' f' | e'4 4. a8 |
  d'8 e' cis'4 e' | d'2 r4 \break
  \mark #3
  d8 e f g a bes | g2. | d'4 bes g | f2. | d8 e f g a bes |a2. | 
  a8 bes a g f g | a2. 
  d8 e f g a bes | g2. | d'4 bes g | f2. | d8 e f g a bes |a2. | 
  a8 bes a g f e | d2.~ | d4 r2 
}


\markup \vspace #3 % space between header and score

% -- music and text ------------------------------------------------

chords_stanza = \chordmode { 
  s2. g2.:m s d:m s a:7 s d:m d:7 g:m s d:m s a:7 s d:m d:7 g:m s d:m s a:7 s d:m
  
  s2. g:m s d:m s a:7 s d:m s g:m s d:m s a:7 s d:m
}
