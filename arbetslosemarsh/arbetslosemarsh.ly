% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

piecename_footerline = "Arbetslosemarsh"
version_date = "10.2022"

\header {
  title = \markup \caps  {"Arbetslosemarsh"}
  composer = "Mordechai Gibirtig"
  copyright = ""
  arranger = " "
  }

\include "../_common/footers.ily"
\footer_common_with_pagenum 

% finetuning
\paper {
  system-system-spacing.padding = #6 % spacer between the staff group
  ragged-right = ##f
  last-bottom-spacing.basic-distance = #15
  top-margin =  #10
  bottom-margin =   #8
  
}



\markup \vspace #1 % space between header and score

% -- music and text ------------------------------------------------
global = {
  \key d \minor
  \time 4/4
}

d_m = { d,8 <a, d f >8->}

voice_vocal = \fixed c'' { 
  d4^\markup \small \italic"Stanza:  (chords on 1,2,3,4)" a, d f e8 f g a  f e d4
  d8 e f g a bes a4 \break
  a8 d' c' bes a bes a4
  g8 a bes g f g a f 
  e f g a g f e d 
  cis d e a, d f a4
  g8 a16 bes a8 g f e d4
  cis8 d e a, f4 e \break
}

voice_git_interlude = \fixed c''{
  <d, d>8^\markup \small \italic"Interlude  (atacca, 3 or 4 bars)" <a, d f >->
  \d_m \d_m \d_m \d_m \d_m \d_m \d_m \d_m \d_m \d_m \d_m  \bar ".|"
  
}
voice_chords = \chordmode {
  d4:m d:m d4:m d:m  a:7 a:7 d:m d:m bes bes f f d:m d:m f f 
  g:m g:m d:m d:m a:7 a:7 a:7 a:7 a:7 a:7 d:m d:m g:m g:m d:m d:m a:7 a:7 g4:m a4:7 
  d1:m d1:m d1:m
  
}

stanza_one = \lyricmode 
  {\set fontSize = #-2 
   Eyns4 zwei drai vier Ar8 -- beits -- los -- e sin -- nen wir4 
    } 


% -- container ---------------------------------------------
\score {
  <<
    
    \new ChordNames {
      \voice_chords
    }
    
  \new Staff 
    {
     \global
     \voice_vocal
     \voice_git_interlude
    }
   
  \new Lyrics { 
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \stanza_one
  }
  >>
  \layout { }
  \midi { \tempo 4=95 }
}