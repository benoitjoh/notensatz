\version "2.20.0"

\include "../_common/makros.ily"

global = {
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

voice_prelude = \fixed c' { 
  \repeat volta 2 {r4^\markup\italic"phrase 1" \triole{b,8 e fis} | g8. g16 \triole{g8 fis e} | a8 fis4. }
  \repeat volta 2 {r4^\markup\italic "phrase 2" \triole{b,8 e fis} | g8. g16 \triole{g8 fis e}|  a8. a16 \triole{a8 g fis} | g8. g16 \triole{g8 fis e} fis2 }
  \repeat volta 2 {r4 \triole{b,8 e fis} | g8. g16 \triole{g8 fis e} | a8 fis4. }
  r4^\markup\italic "phrase 3" \triole{b,8 e fis} | g8. g16 \triole{g8 fis e}|  
     a8. a16 \triole{a8 g fis} | bes8. bes16 \triole{bes8 g fis} b2\fermata 
} 

chords_prelude = \chordmode { 
    \repeat volta 2 {s2 e2:m a4:m b4:7 }
    \repeat volta 2 {s2 e2:m a2:m e2:m b2:7 }
    \repeat volta 2 {s2 e2:m a4:m b4:7}
    s2 e2:m a2:m bes2 b2:7 
}


dididadi = \fixed c' {b16^"Bridge" b | 
                      a8 b r8 b16 b  | 
                      a8 b r8 b16 b a8 fis dis16 b,8.}

voice_vocal= {
   \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
   \tupletUp
   s4. b16 b16 g'8 8 8  fis'16 e' 
   a'8 fis' r16 b16 e' fis' g'8 8 8 fis'16 e'  \break
   a'8 fis' r16 b e' fis' g'8 8 8 fis'16 e' 
   a'8 16 16 8 g'16 fis' b'8 8 ais' \triole{g'16 ais' g'} \break
   fis'4 r16 b16 e'fis' g'8 8 8 fis'16 e' 
   a'8 fis' r16 b16 e'fis' g'8 8 8 fis'16 e' \break
   a'8 fis' r16 b16 e'fis' \triole{g'8 g' g'} \triole{g'8 8 fis'16 e'}
   \triole{c''8 8 8} \triole{c''8 8 b'16 a'} \break
   g'8 e' fis' b e'2 a'8 8 a'16 g' fis' e' fis'2
   c''8 8 16 b' a' g' b'4. 
   \dididadi
   
   r4. b8 \break
   \repeat volta 2 {
     \mark \box_a
     g'4^"Stanza" fis'8 e' g'4.  b8 g'4 fis'8 e' g'4. 8 
     fis' dis'4 b8 fis'4 g'8 fis' e'4 r4r r8  b^\box_a g'4 fis'8 e' \break
     g'4. b8 g'4 fis'8 e' g'4. 8 fis' dis'4 b8 
     fis'4 g'8 fis'e'2~ 8 8 fis'^\box_b g' a' r e' a'~ \break
     8 8 g' fis' g' r e' 8 8 8 8 fis' g' a' r e' a'~ 8 8 g' a' \break
     b' r b b b4 r8 b^\box_a  g'4 fis'8 e' g'4. b8 g'4 fis'8 e' \break
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
    s2*4
    \repeat volta 2 {
       e2:m s e:m s b:7 s e:m s e:m s e:m s b:7 s e:m s a:m s e:m s a:m s b:7 s e:m s e:m s b:7 s
    }
    \alternative {
     { e2:m s2 }
     { e2:m s2 }
      
    }
    }
