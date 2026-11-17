% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\header { instrument = \markup \concat {"Clarinet in B" \flat }}

\include "../_common/footers.ily"
\footer_common_with_pagenum

% finetuning
\paper {
  system-system-spacing.padding = #2.5 % spacer between the staff group
  ragged-right = ##f
  %last-bottom-spacing.basic-distance = #10
  top-margin = #8
  bottom-margin = #6
}

% -- music  ------------------------------------------------

\include "music.ily"

\markup \vspace #0.7


% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \override ChordName.font-size = #0
      \chords_refrain
      \chords_stanza
      \chords_bridge
      \chords_stanza_three
      \chords_stanza_four
    }
    \new ChordNames \transpose d e{
      \override ChordName.font-size = #-2
      \chords_refrain
      \chords_stanza
      \chords_bridge
      \chords_stanza_three
      \chords_stanza_four
    }


  \new Staff \with {instrumentName = \markup { \center-column { "Clarinet"\line { "in B" \tiny \flat } } }  }
    {

     \key e \minor

     \transpose d e {
      \vocal_refrain
      ^\markup\italic"1./2. Str."
      \voice_stanza
      ^\markup\italic"Bridge"
      \voice_bridge
      ^\markup\italic"3. Str."
      \voice_stanza_three
      ^\markup\italic"4. Str."
      \voice_stanza_four
     }
    }
  >>
  \layout { }

}