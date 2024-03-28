\version "2.20.0"

\include "../_common/makros.ily"

global = {
    \time 7/8
    \clef treble
    % use 2 2 3 schema for bars
    \set Timing.baseMoment = #(ly:make-moment 1/8)
    \set Timing.beatStructure = 2,2,3
}

% part A : four bars that repeat
aa =  \fixed c'' { 
  a,8 bes, cis d e (f) d | e4\prall  e8 a, e a, a, | g4\trill f8 (e) d (cis) d | e4\prall e8 a, e a, a, }

aaa = { \aa \break 
        \aa }

% part B : three bars same, last different
bb = {
  g4\trill f8 (e) d (cis) d | e4\trill d8(cis) bes,(a,) g, | e4\trill d8(cis) bes,(a,) g, }

bbb = \fixed c''{ 
  \bb | a,8 bes, cis d e\prall (dis) e | 
  \bb | a,4 4 4.}

% part C : two bars same, last different
cc = { 
  d4\prall d8(cis) d(e) d | cis4\prall cis8(e) d(cis) bes,  }

ccc = \fixed c'' { 
  \cc | d4\prall d8(cis) d(e) d | cis4\prall cis8(e) d(cis) bes, | 
  \cc | e4\trill d8 (cis) bes,8 (a,) g,| a,4 4 4. | }

dm = \chordmode { d2:m s4. }
gm = \chordmode { g2:m s4. }
aspt = \chordmode { a2:7 s4. }


voice_part_a =  { 
   \key a \minor
   \mark \box_a
   \repeat volta 2 { \aaa }
   \break
}

chords_part_a =  \chordmode { 
   \repeat volta 2 { \aspt \aspt \gm \aspt \aspt \aspt \gm \aspt }
}


voice_part_b = { 
   \mark \box_b
   \repeat volta 2 { \bbb }
   \break
}

chords_part_b =  \chordmode { 
   \repeat volta 2 { \gm \aspt \gm \aspt \gm \aspt \gm \aspt    }
}


voice_part_c = { 
   \mark \box_c
   \repeat volta 2 { \ccc }
   \break
}

chords_part_c =  \chordmode { 
   \repeat volta 2 { \dm \aspt \dm \aspt \dm \aspt \gm \aspt }
}

