% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
\include "../_common/makros.ily"

\include "header.ily"
\header { instrument = \markup \concat {"Clarinet in B" \flat }}
\include "../_common/footers.ily"
\footer_common_with_pagenum 


\paper {
  system-system-spacing.basic-distance = #15 % spacer between the staff group
  ragged-last-bottom = ##t
}

\include "music.ily"

\markup \vspace #0 % space between header and score

\score 
{
%\unfoldRepeats{
  <<
  \new ChordNames { 
    \override ChordName.font-size = #0
    \chords_part_a \chords_part_b \chords_part_a_two}

\new ChordNames \transpose d e { 
    \override ChordName.font-size = #-2
    \chords_part_a \chords_part_b \chords_part_a_two}
  
  \new Staff \with { instrumentName = \markup { \center-column { "Clarinet" \line { "in B" \tiny \flat } } }
                    midiInstrument = "acoustic guitar (nylon)" }

     \transpose d e { 
      \global 
      \clef treble
      \voice_part_a  
      \voice_part_b
      \voice_part_a_two
    }
  >>

%}
  \layout { }
}

