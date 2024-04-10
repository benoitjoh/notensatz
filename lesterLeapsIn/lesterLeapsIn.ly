% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Lester"
version_date = "10.2022"

\header {
  title = \markup \caps  {"Lester Leaps In"}
  composer = "Lester Young"
  copyright = ""
  arranger = "Helmut Eisel"
  }

\include "../_common/makros.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #2 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #15
  top-margin =  #10
  bottom-margin =   #8
  
}



\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \clef treble
  \key g \minor
  \time 4/4
}


voice_a = \fixed c'' { 
  r2 r8 f, g,4 
  \repeat volta 2 {
      \mark \box_a
       bes,4. r8 bes,4. r8 bes,4 8 8  d4 f bes,4. g,8 r2 r2 r8 f,8 g,4
      bes,4. r8 bes,4. r8 bes,4 8 8  d4 f
      }
  \alternative {
      { bes,4 r4 r2 r2 r8 f, g,4 }
      {bes,4 r4 r2 r1 } 
      }

}


chords_a = \chordmode {
    s1
    \repeat volta 2 {
      bes2 g:m7 c:m7 f:7 d:m7 g:m7 c:m7 f:7 bes:7 bes:7 es:7 e:7
      }
  \alternative {
      { bes:6 f:7 bes:6 f:7}
      { bes:6 f:7 bes1:6 } 
      }
}

voice_b =  \fixed c'' {
  \mark \box_b
  \improvisationOn  
  g,4 4 4 4 r1 g,4 4 4 4 r1 g,4 4 4 4 r1 g,4 4 4 4   \break
  \improvisationOff
   r2 r8 f,8 g,4 }

chords_b = \chordmode { d1:7 s1 g:7 s1 c:7 s1 f:7 s1}

voice_c = \fixed c'' { 
    \mark \box_c 
   bes,4. r8 bes,4. r8 bes,4 8 8  d4 f bes,4. g,8 r2 \break r2 r8 f,8 g,4
      bes,4. r8 bes,4. r8 bes,4 8 8  d4 f bes,4 r4 r2 r1 
   \bar "|."   
}
  

chords_c = \chordmode { bes2 g:m7 c:m7 g:7 d:m7 g:m7 c:m7 f:7 bes:7 bes:7 es:7 e:7 bes:6 f:7 bes:6 f:7}

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \chords_a
      \chords_b
      \chords_c
    }
    
  \new Staff \with {instrumentName = "Voice"}
    {
     \global
     \voice_a \break
     \voice_b 
     \voice_c
    }
   
  >>
  \layout { }
  \midi { \tempo 4=120}
}

\markup \vspace #1 % space between header and score

\score {
  <<
    \new ChordNames {
      \chords_a
      \chords_b
      \chords_c
    }
    \new ChordNames {
      \override ChordName.font-size = #-2
      \transpose d e {
      \chords_a
      \chords_b
      \chords_c
      }
    }
    
  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
    }
    {
     \transpose d e {
     \global
     \voice_a \break
     \voice_b 
     \voice_c
     }
    }
   
  >>
  \layout { }
}