\version "2.20.0"

global = {
  \key d \minor
  \time 4/4
}

voice_vocal = 
  \transpose c c'
   {
   \clef "treble" 
   d8 d d f a a a f g g g e f f e d\break 
   f f e f g (g) f (e) d2. r8 d8 \break
   d8 d d f a a a f g g g e f f e d \break
   f f e f g4 f4 d2. r4 \break
   g8 r g r c' c' c' bes a f f a c' bes a g  \break
   d f e f g-. r e-. r a r r4 r2 \break
   g8 r g r c' c' c' bes a f f a c' bes a g \break
   d f e f g r e r d2. r8 d8 
   \bar "|."
   }

 
voice_chords = \chordmode { 
    d2:m d2:m g2:m d2:m
    d2:m g4:m a4:7 d2.:m a4:7
    d2:m d2:m g2:m d2:m
    d2:m g4:m a4:7 d2.:m a4:7
    g2:m c2 f2 a2:7
    d2:m g4:m a4:7 d1:m
    g2:m c2 f2 a2:7
    d2:m g4:m a4:7 d1:m
    }
