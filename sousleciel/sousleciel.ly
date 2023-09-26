% tepmlate for a three parts Staff with lyrices and a repeat in it
\version "2.20.0"

\include "header.ily"
\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #3 % spacer between the staff group
}

% ---------------------------------------
\include "../_common/makros.ily"
global = {
  \key e \minor
  \time 3/4
}

voice_vocal = \fixed c' { 
   \clef treble
   \mark \box_a 

   \tempo "Allegro"
   \set Score.currentBarNumber = #1
    { b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a g fis e2.~e~e~e4 r r \break
     b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a g fis e2.~e~e \break
      fis4 g fis e2. e e fis4 g fis e2. e e \break
      fis4 g fis e2 fis4 g2 a4 b8 r c'4 d' c' b a b2.~b~b~b4 r r  \break
      b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a gis fis gis2.~gis~gis4 r b b gis e \break
      \key e \major 
      dis2. dis~2 b4 b gis e d2. d~d2 b4 b gis e \break 
      cis2. 2.~2 a4 a e cis c2.~2.~2. e4 d c \break 
      b,2 4 bis,2 4 cis2 4 dis 2 4 e2 4 fis2 4 gis2 r4 a gis a \break
      b2.~2.~4 r b cis' a fis b2.~b~b~ b2 r4 \break
      \key e \minor
      a g fis  <e gis b>2. <d fis b>2. <e gis b>2.  <d fis b>2. <e gis b>4 r4 r r1 r1
      \bar "."
      
     }
     

   %refrain
}





voice_chords = \chordmode {
  e2.:m s e:m s a:m s s s b:7 s s s e:m s s s 
  e2.:m s e:m s a:m s s s b:7 s s s e:m s s
  s a:m s s d:7 e:m s s   
  

}  
  



% ---------------------------------------

\include "lyrics.ily"

\markup \vspace #0 % space between header and score

\score 
{
%\unfoldRepeats{
  <<
  \new ChordNames {\voice_chords }
  
  \new Staff \with { instrumentName = "Vocal" }
  \new Voice = "stanza" { 
    { \global \voice_vocal } 

    }
   
  %\new Lyrics \lyricsto "stanza"
  %  \stanza_one_first
  >>

%}
  \layout { }
  \midi { \tempo 2=120 }
}


%\markup \vspace #2 % space between header and score
%  \markup \fontsize #-1 {
%    \stanza_tabloid 
%  }
