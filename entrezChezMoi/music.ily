\version "2.20.0"

% -- music and text ------------------------------------------------
global = {
  \key d \minor
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
  \set Score.markFormatter = #format-mark-box-alphabet

}
\include "../_common/makros.ily"

vocal_refrain =  \fixed c' {
  \mark \box_a  r1 | a2 g4. f8 g2. f4 c'4 bes a bes a g f g  | a2 f4 e |  d4. d8 \triole{d4 g d} | e1 |
  r1 | r8 a4. g4. f8 g2. f4 |  c'8 c'4. c'4 bes4 bes4 a8 g8 f4 g4 | a2 f4 e d2  \triole{d4 g d} | e1| \break
}

voice_stanza =  \fixed c' {
  \mark \box_b
  r2. a8 a | g8 g4. a4 f | e2. e8 e8 |  bes8 c'4. a4 f e2. r8 e8 |g8 g4. a4 bes| e4 e  e e | f1 | \break
  r2. a8 a | g8 g4. a4 f | e2. e8 e8 |  bes8 c'4. a4 f e2.  g8 g8 | g8 g4. a4 bes| c'4 bes a g | a1 | \break
  }
voice_bridge =  \fixed c' {
  \mark \box_c
  r2. a4 | bes4 bes r c' | d' d' c' bes | a4 r a g a2. r4 | r2. g8 g | g4 c'2 bes4 | a4 a r2 | \break
  r2. a4 | bes4 bes r c' | d' d' c' bes | a4 r a g a2. r4 | r2. f4 | g2. r8 g8 | g4 g  c'4 bes | a1 | \break

  }

voice_stanza_three =  \fixed c' {
  \mark \box_d
  r2 a4 a | g2 g4 g4 | g2 a4 bes4 | e2 4 4 | e2 a4 a | g2 g4 g4 | g2 a4 bes4 | e2 4 4  \break
  e2 a4 a | g2 g4 g4 | g2 a4 bes4 | e2 4 4 | e2 e4 e | f2 r2 | r8 a8 a4 a4 g4 | a1 \break
  }

voice_stanza_four =  \fixed c' {
  \mark \box_ds
  r2 a4 a | g4 g2 g4 | g2 a4(bes4) | e4 2 4 | e2 a4 a | g4 g2 g4 | g2 a4 bes4 | c'4 2 d'4  \break
  c'2 r4 a | c'4 c'2 c'4 | c'4. c'8 c'4 bes4 |  a2 4 4 | a2 a4 g | a2 r2 | r4 a4 a4 g4 | a1 \bar "|."
  }


chords_refrain = \chordmode {
  s1 d1:m g:m c a d:m g:m a
  s1 d1:m g:m c a d:m g:m a
}
chords_stanza = \chordmode {
  s1 g1:m c g:m c g:m c d:m
  s1 g1:m c g:m c g:m c a
}
chords_bridge = \chordmode {
  s1 bes1 s d:m s g:m s d:m
  s1 bes1 s d:m s g:m s s a
}

chords_stanza_three = \chordmode {
  s1 g1:m s c s g:m s c
  s1 g1:m s c s d:m s s
}

chords_stanza_four = \chordmode {
  s1 g1:m s c s g:m s c
  s1 g1:m s c s a s s
}

% -- music and text ------------------------------------------------


