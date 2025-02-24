% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\include "../_common/makros.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #5
  %systems-per-page = 6  % force nr. of systems
  }


\include "music.ily"

voice_vocal_stanza =  \fixed c'' { 
  \mark #1
  d4 c c8 c4. | d8 d4. d4 c | c b, b,8 a,4. | b,1 |
  d4 c c8 c4. | e4 e d c |  c b, b,8 a,4. | b,1 | \break
  d4 c2 c8 c  | e8 e4. d4 c |c b, b,8 a,4. | b,1 
  b,4 a,2 a,8 a, | b,2  a, | e,1 r\break
  
}

voice_refrain =  \fixed c'' {
  \mark #2
  d4 c2. d4 c d c | c4 b,2. | c4 b, c b, | b,4 a,2. | b,2 c |b,1
}

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------

chords_stanza = \chordmode { 
  a1:m s e:m s a:m s e:m e:m	
  a1:m s e:m s b:7 s e:m	s
  
}
chords_refrain = \chordmode { 
  a1:m s e:m s b:7 s e:m
}

stanza_one = \lyricmode {
  \set stanza = "1. " 
  \align_syllables_left
} 
bridge_one = \lyricmode { 
} 
stanza_two = \lyricmode {   
    \set stanza = "2. "
    \align_syllables_left
     }
    

% -- container ---------------------------------------------


\score {
  <<
    \new ChordNames \with {midiInstrument = "acoustic grand"} {
      \override ChordName.font-size = #1
      \transpose f f, {
      \chords_stanza
      \chords_refrain
       }
    }
    
  \new Staff \with {instrumentName = "Vocal" midiInstrument = "electric piano 1"}
    {
      \global 
      \voice_vocal_stanza 
      \voice_refrain
      
    }
   
  \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
      }
    {  
    \stanza_one 
    \bridge_one
    }
    

  
  >>
  \layout { }
  \midi { \tempo 4=120 }
}