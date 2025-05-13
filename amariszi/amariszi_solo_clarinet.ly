% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = \markup { "Solo #1 and #2 (for Clarinet in B" \tiny \flat ")" } }

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #1.42 % spacer between the staff group
  %last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------
\include "music.ily"
\include "amariszi_soli.ily"


% -- container ---------------------------------------------



\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #-2
      \transpose bes c
      \chords_a
    }
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
                    midiInstrument = "electric piano 1" }
    {
     \global
     \key a \minor

     \transpose bes, c 
     \voice_solo_a
    }
    
  >>
  \layout { }
  %\midi { \tempo 4=120 }
}
\markup \vspace #1 % space between header and score

\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #-2
      \transpose bes c {
      \chords_a}
    }
  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } } 
                    midiInstrument = "electric piano 1" }
    {
     \global
     \key a \minor

     \transpose bes, c 
     \voice_solo_b
    }
    
  >>
  \layout { }
  \midi { \tempo 4=120 }
}
