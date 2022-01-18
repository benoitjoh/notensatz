\version "2.20.0"

global = {
  \key e \minor
  \time 2/4
}

voice_vocal= {
   \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
   \tupletUp
   s4.^"Stanza" b16 b16 g'8 8 8  fis'16 e' 
   b'8 fis' r16 b16 e' fis' g'8 8 8 fis'16 e'  \break
   b'8 fis' r16 b e' fis' g'8 8 8 fis'16 e' 
   a'8 16 16 8 g'16 fis' b'8 8 ais' \tuplet 3/2 {g'16 ais' g'} \break
   fis'4 r16 b16 e'fis' g'8 8 8 fis'16 e' 
   b'8 fis' r16 b16 e'fis' g'8 8 8 fis'16 e' \break
   b'8 fis' r16 b16 e'fis' \tuplet 3/2 {g'8 g' g'} \tuplet 3/2 {g'8 8 fis'16 e'}
   \tuplet 3/2 {c''8 8 8} \tuplet 3/2 {c''8 8 b'16 a'} \break
   g'8 e' fis' b e'2 a'8 8 a'16 g' fis' e' fis'2
   c''8 8 16 b' a' g' b'4. b8 \break
   \repeat volta 2 {
     \mark \markup { \bold \fontsize #-1 \circle a }
     g'4^"Refrain" fis'8 e' g'4.  b8 g'4 fis'8 e' g'4. 8 
     fis' dis'4 b8 fis'4 g'8 fis' e'4 r4r r8  b^\markup { \bold \circle a } g'4 fis'8 e' \break
     g'4. b8 g'4 fis'8 e' g'4. 8 fis' dis'4 b8 
     fis'4 g'8 fis'e'2~ 8 8 fis'^\markup { \bold \circle b } g' a' r e' a'~ \break
     8 8 g' fis' g' r e' 8 8 8 8 fis' g' a' r e' a'~ 8 8 g' a' \break
     b' r b b b4 r8 b^\markup { \bold \circle a }  g'4 fis'8 e' g'4. b8 g'4 fis'8 e' \break
     g'4.  8 fis' dis'4 b8 fis'4 g'8 fis'
   }
   \alternative {
     { e'2~ 4 r8 b }
     { e'2~ e'4 r4}
   }
 }

 
voice_chords = \chordmode { 
    s2 e:m a4:m b:7 e2:m a4:m b:7 e2:m a:m e:m b:7
    e2:m a4:m b:7 e2:m a4:m b:7 e2:m a:m e4:m b:7 e2:m a:m b:7 a:m b:7 
    \repeat volta 2 {
       e2:m s e:m s b:7 s e:m s e:m s e:m s b:7 s e:m s a:m s e:m s a:m s b:7 s e:m s e:m s b:7 s
    }
    \alternative {
     { e2:m s2 }
     { e2:m s2 }
      
    }
    }
