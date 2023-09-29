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
  \time 3/4
}

voice_vocal = \transpose c c \fixed c' { 
   \clef treble
   \key e \minor

   \mark \box_a 

   \tempo "Allegro"
   \set Score.currentBarNumber = #1
    { 
      \repeat volta 2 {b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a g fis e2.~e~e~ }
       \alternative { {e4 r r} {fis4 g fis }}  
       \break
      \set Score.currentBarNumber = #17
      \mark \box_b
      e2. e e fis4 g fis e2. e e fis4 g fis  \break
      e2 fis4 g2 a4 b8 r c'4 d' c' b a b2.~b~b~b4 r r  \break
      \mark \box_as 
      b,4 e fis g2 a4 b8 r8 a4g fis e d c2. b a~a \break
      b,4 dis e fis2 g4 a8 r c'4 b a gis fis gis2.~gis~gis4 r b b gis e \break
      \key e \major 
       \mark \box_c
      dis2. dis~2 b4 b gis e d2. d~d2 b4 b gis e \break 
      cis2. 2.~2 a4 a e cis c2.~2.~2. e4 d c \break 
      b,2 4 bis,2 4 cis2 4 dis2 4 e2 4 fis2 4 gis2 r4 a gis a \break
      b2.~2.~4 r b cis' a fis b2.~b~b~ b2 r4 \bar "|" \break
      \bar "."
      
     }
}    

voice_chords = \transpose c c \chordmode {
  \set majorSevenSymbol = \markup { maj-7 }
  \repeat volta 2 { e2.:m s e:m s a:m7 s a:m7 s b:7 s b:7 s e:m s s}
  \alternative { {s} {s }}  
  a:m s a:m d:7 e:m s e:m s a:m7 s c:7 s b:7 s s s
  e:m s e:m s a:m7 s s s  b:7 s b:7 s e s s s
  e:maj7 s s s e:7 s s s a:maj7 s s s a:m s s s
  e c fis:7 b:7 a b e a e s s a b:7
  

}  
  
 voice_coda = {\key e \minor  a g fis  <e gis b>2. <d fis b>2. <e gis b>2.  <d fis b>2. <e gis b>4 r4 r r1 r1}

stanza_one_first = \lyricmode  
  {%\align_syllables_left
    \set fontSize = #-2 \set stanza = "1."
   % A
   Sous4 le ciel de2 Pa4 -- ris4  " "4 S' envole une chan -- son2. hm -- hm4.
   elle4 est nee d'au -- jourd -- hui Dans le coeur d'un gar -- con  
   % B
   \set stanza = "2."
   Sous le pont de  Be -- rcy un phi -- lo -- sophe  a -- ssis  
   Deux mu -- si -- ciens quel -- ques ba -- dauds puis les gens par mill -- "iers______"
   % A'
   \set stanza = "3."
   Sous le ciel de Pa -- ris jusqu' -- au soir vont chant -- er hm hm 
   L'hymne d'un " " peu -- ple pris de sa vieille "" ci -- té.
   % C
   Pres de No -- tre Dame " " par -- fois couve un drame " " 
   Oui mais a Pan -- ame " " tout peut s'arr -- ang -- er 
   Quel -- ques ray -- ons du ciel d'é -- té l'acc -- or -- de -- on 
   d'un mar -- in -- ier l'esp -- oir fleu -- rit Au ciel de Pa -- ris 
  }  
stanza_one_second = \lyricmode 
  {\set fontSize = #-2 
    Sous4 le ciel de2 Pa4 -- ris4 " "    Mar -- chent4 des2 a -- mour -- "-" -- eux4.
    Leur bon -- heur se con -- struit sur un air fait pour eux 
  } 


% ---------------------------------------


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
   
  \new Lyrics \lyricsto "stanza"
    \stanza_one_first
    
  \new Lyrics \lyricsto "stanza"
    \stanza_one_second
    

  >>

%}
  \layout { }
  \midi { \tempo 2=120 }
}


%\markup \vspace #2 % space between header and score
%  \markup \fontsize #-1 {
%    \stanza_tabloid 
%  }
