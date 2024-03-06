\version "2.20.0"

\include "../_common/makros.ily"

global = {
    \time 11/8
    \clef treble
    % use 2 2 3 2 2 schema for bars
    \set Timing.baseMoment = #(ly:make-moment 1/8)
    \set Timing.beatStructure = 2,2,3,2,2
}

voice_part_a = \fixed c' { 
   \key a \minor
   \mark \box_a
   \repeat volta 2 {
     d4 cis'8 d' d'4 8 8 c' b a | c' b a gis gis f a g4 f8 e | 
     d4 e8 f f d a gis4\prall f8 a | gis4 f8 e d f d e4\prall e |
     }
   \break
}

chords_part_a =  \chordmode { 
   \repeat volta 2 { d2:m s4. s2 | d2:m s4. s2 | d2:m s4. s2 | e2:7 s4. a2:7 }
}

voice_part_b = \fixed c' { 
   \mark \box_b
   \repeat volta 2 {
     d4 e8 f f d a gis4\prall f8 e | d4 d'8 8 8 c' b a gis f e | 
     d4 e8 f f d a gis4\prall f8 a | gis4 f8 e d f d e4 4
     }
   \break
}

chords_part_b =  \chordmode { 
   \repeat volta 2 { \chords_part_a }
}

voice_part_c = \fixed c' { 
   \key fis \minor
   \mark \box_c
   \repeat volta 2 {
     b8 cis' d'4\prall 8 b d' cis'4\prall 8 a | e'4 d'\prall 8 b d' cis'4\prall 8 a |
     b8 cis' d'4\prall 8 b d' cis'4\prall cis'8 a |b8 a gis a b4\prall e'8 b4 r
     }
   \break
}

chords_part_c =  \chordmode { 
   \repeat volta 2 { e2:7 s4. a2:7 | e2:7 s4. a2:7 | e2:7 s4. a2:7 | b2:7 e4.:7 s2 }
}

voice_part_d = \fixed c' { 
   \key a \minor
   \mark \box_d
   \repeat volta 2 {
     a8 b gis4\prall f8 e d e4\prall 8 b, | a8 b gis4\prall f8 e d e4\prall 8 b, |
     a8 b gis4\prall  a8 (b) gis a b gis4\prall | a8 b gis4\prall f8 e d e4\prall 4
     }
   \break
}

chords_part_d =  \chordmode { 
   \repeat volta 2 { d2:m s4. e2:7 | d2:m s4. e2:7 | d2:m s4. s2 | d2:m s4. e2:7 }
}

voice_part_e = \fixed c' { 
   \key b \minor
   \mark \box_e
   \repeat volta 2 {
     e'8 fis' g'4\prall 8 e' g' fis'4\prall 8 d' |a'4 g' g'8 e' g' fis'4\prall 8 d' |
      e'8 fis' g'4\prall 8 e' g' fis'4\prall 8 d' | e'8 d' cis' d' e'4\prall a'8 e'4 4 
     }
   \break
}

chords_part_e =  \chordmode { 
   \repeat volta 2 { a2:7 s4. d2 | a2:7 s4. d2 | a2:7 s4. d2 | e2:7 s4. a2 }
}