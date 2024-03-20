\version "2.20.0"

\include "../_common/makros.ily"

global = {
    \key f \minor
    \time 3/4
}

voice_a_repeat = {
    f2 f8 as g2 g8 bes as g f2 (f) f4 bes2 bes8 des' 
    c'2 bes4 c'2. ~c'2 c'4 f'2 c'8 es' des' c' bes2  c' g8 bes  
    as g f2 g4.g8 as des' c'4. bes8 g as c'2. ~c'2 c'4 f'2 c'8 es'
    des' c' bes2 c'2 g8 bes as g f2
  }

chords_a_repeat = \chordmode {
  f2.:m c:7 f:m f:7 bes:m es as c:7 f:7 bes,:m c:7 f:m c c:7 f:m  s f:7 bes:m c:7 f:m 
  }

voice_part_a = \fixed c' { 
   \clef treble
   \set Score.currentBarNumber = #1
   \tempo "Slow Waltz"
   r2 c4   
   \mark \box_a
   \repeat volta 2 {
       \voice_a_repeat 
     }
   \alternative { 
       { g4. as8 bes des' c'4. bes8 as g f2. ~f2 c4} 
       { g4. as8 bes des' c'4. bes8 g as  f2. es }
     }  
   \break
}

chords_part_a =  \chordmode { 
   s2.   
   \repeat volta 2 {

       \chords_a_repeat 
     }
   \alternative { 
       {  bes2.:m c:7 f:m s} 
       {  bes2.:m c:7 f:m es  }
     }  
   \break
}

voice_part_b = \fixed c'{
  as4    \mark \box_b
  c'2 r4 bes as g4. as8 bes c' bes4. as8 g4 f4 as2 r4 g f e4. f8 g as g2 c4 
  f2 as4 g2 bes4 as2 c'4 des'2 4 c'2 4 b2.
  c'2. ~c'2 4 f'2. c'2 es'4 des'2 c'4 bes 2 4 c'2. 
  g2. as2 g4 f2 4 bes2. 4 c' des' c'2. g' f' ~f' \bar "||" \break
}

chords_part_b = \chordmode {
   as s es:7 s f:m s c:7 s f:m c:7 f:m bes:m f:m g:7 c:7 s f:m s bes:m s c:7 s f:m s bes:m s c:7 s f:m s
  }


voice_part_a_two = \fixed c'{ 
    \mark \box_as r2 c4  
    \voice_a_repeat 
     g4. as8 bes des' c'4. as'8  g' es' f'2. ~2. \fermata \bar "|."
    }

chords_part_a_two = \chordmode {
    s2. \chords_a_repeat 
    bes:m c:7 f:m s
  }
