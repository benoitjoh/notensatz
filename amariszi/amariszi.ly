% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #2 % spacer between the staff group
  %last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------
\include "music.ily"


stanza_one = \lyricmode {
  \align_syllables_left	
  ""2 A8 -- ma -- ri szi, a -- ma -- ri,4 a8 -- ma -- ri ci -- ni bó -- ri4
Aj,4 la-la-la4  -- la8  -- la la la la laj.4. ""2 
  
}

\markup \vspace #2 % space between header and score

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      {
      s2 \chords_a
      s2 \chords_b
      s2 \chords_c
      }
    }
    
  \new Staff \with {instrumentName = "Vocal"
                    midiInstrument = "acoustic guitar (nylon)" }
    {
     \global
     \key g \minor
    
     \voice_vocal_a
    }
    
    \new Lyrics \with {    
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.8  %spacer before textlines
      }
      \stanza_one

  >>
  \layout { }
  \midi { \tempo 4=90 }
}
