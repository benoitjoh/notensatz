\version "2.20.0"
\include "../_common/makros.ily"

global = {
  \key d \minor
  \time 4/4
}

voice_vocal =     
  \transpose c c'
    {
    \clef "treble" 
    \mark \box_a
    d4 f e d g f2. d4 f e d g f2 f4 \break 
    f8 (a) g4 g g g2 g f8 e d4 g d f2. a,4
    \mark \box_a \break
    d4 f e d g f2 a,4 d f e d g f2 f4 \break
    f8 (a) g4 g g g2 g f8 e d4 g g d2. r4 \break
    \mark \box_b
    g d bes8 a g4 g d bes8 a g4  r4 bes a g g bes a g \break
    f c a8 g f4 f c a8 g f4 r4 c'2 d'4 a g f e 
    \mark \box_a \break
    d f e d g f2. d4 f e d g f2 f4 \break
    f8 (a) g4 g g g2 g f8 e d4 g g d2. r4 \bar "|."
    }

 
voice_chords = 
  \chordmode { 
    d1:m s1 d1:m s1 g1:m s1 d2:m g2:m d1:m  
    d1:m s1 d1:m s1 g1:m s1 d2:m g2:m d1:m 
    g1:m g1:m c1 c1 f1 f1 a1 a1
    d1:m s1 d1:m s1 g1:m s1 d2:m g2:m d1:m
    }
