\version "2.20.0"

global = {
  \key d \minor
  \time 2/4
}

voice_chords = \chordmode {
  d2:m f2 bes4 c4 
  f2 bes4 c4 f2g2:m
  d:m bes4 c f2
  g2:m d:m d4:m/a a:7 d2:m
}

voice_vocal = \fixed c' { 
  %\tieDashed \slurDashed
  d8 f d f a a a8. a16 d'8 d' c' bes \break
  a4. d'8 f' d' c' bes a4. r8 bes bes a g \break
  a f d8. e16 f8 f g g a4. r8 \break
  bes8 bes a g a f d8. e16 f8 f e e d4. r8 \bar "|."
}

voice_vocal_two = \fixed c' { 
  a8 a  f f  a a f8. f16 f8 f e e 
  f4. a8 f8 f8 g8 e f4. r8 d8 d d d
  f8 f e d d' d' c'bes a4. r8
  d8 d d8 e f a f8 f a a a a d4. r8
}

voice_vocal_three = \fixed c' { 
  f8 f a a c' f' e'8. d'16 bes8 a g f 
  a4.  a8 d8 d e8 g a (c' bes a) g g f e
  f f e d d' d' c' bes a (c' f'4)
  g8 g f e d d f g f f g a f4. r8

}