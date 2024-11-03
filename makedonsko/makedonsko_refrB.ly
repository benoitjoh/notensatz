% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"
version_date = "07.2023"

piecename_footerline = "Makedonsko Refrain b"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"

\markup \vspace #2 % space between header and score

% -- music and text ------------------------------------------------
\include "music.ily"


\include "lyrics.ily"



% -- container ---------------------------------------------
\score {
  <<
  \new ChordNames {
    \ref_b_chords
  }
  \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = "Accordeon" }
    {
       \global \ref_b_voice  % refrain, 2 voices
    }
  \new Staff \with {
      midiInstrument = "Grand Piano"
      instrumentName = "Violin" 
            midiMinimumVolume = #1.5
          midiMaximumVolume = #1.5
}
    {
       \transpose	g g' {\ref_b_voice_second}  % refrain, 2 voices
    }
    
   
  
  >>
  \layout { }
  \midi { \tempo 4=140 }
}