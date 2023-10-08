\version "2.20.0"

piecename_footerline = "Huljet (Chorus)"
version_date = "05.2022"


\include "../_common/footers.ily"
\footer_common_with_pagenum 

\include "header.ily"

\header {
  arranger = \markup \italic "Orakel"
  instrument = "- Chorus -"
  }
\paper {
  system-system-spacing.padding = #7.8
  ragged-last-bottom = ##t
}

\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
\include "music.ily"
\include "lyrics.ily"

% -- container ---------------------------------------------
\score {
  <<
    \new ChordNames {
      \voice_chords 
      }
    \new StaffGroup <<
      
      \new Staff {
        \global
        \voice_vocal
        }
   
      \new Lyrics 
        \stanza_one
        
      \new Staff {
         \global
         \voice_vocal_two
        }   
        
      \new Staff {
         \global
         \voice_vocal_three
        } 
      >>
  >>
  
  \layout { }
  \midi { \tempo 4=80 }
}