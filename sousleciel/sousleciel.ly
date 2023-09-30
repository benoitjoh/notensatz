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
      b,4 dis e fis2 g4 a8 r c'4 b a gis fis gis2.~gis~gis4\segno r b b gis e \break
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
  \set slashChordSeparator = \markup \small{ "/" }
  \repeat volta 2 { e2.:m s e:m s a:m7 s a:m7 a:m/e b:7 s b:7 s e:m a:m e:m/g }
  \alternative { {s} {s }}  
  a:m a:m/e a:m d:7 g s g g/b c a:m7 d:7 s b:7 b:7/a e:m/g b:7/fis 
  e:m s e:m s a:m7 s s s  b:7 s b:7 s e s s s
  e:maj7 s s s e:7 s s s a:maj7 s s s a:m s s s
  e gis:7 cis:m gis:7 cis:m b e fis:m e s s a  b:7 b:7/a e:m/g b:7/fis
  

}  
  
 voice_coda = {\key e \minor  a g fis  <e gis b>2. <d fis b>2. <e gis b>2.  <d fis b>2. <e gis b>4 r4 r r1 r1}

stanza_one_first = \lyricmode  
  {%\align_syllables_left
    \set fontSize = #-2 \set stanza = "1."
   % A
   Sous4 le ciel de2 Pa4 -- ris4  " "4 S' envole une chan -- son2. hm -- hm4.
   elle4 est nee d'au -- jourd -- hui Dans le coeur d'un gar -- con  
  }
   % B
stanza_second = \lyricmode  
  {\set stanza = "2."
   Sous le pont de  Be -- rcy un phi -- lo -- sophe  a -- ssis  
   Deux mu -- si -- ciens quel -- ques ba -- dauds puis les gens par mill -- "iers"
  }
  
stanza_third = \lyricmode  
  {  
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
    leur bon -- heur se con -- struit sur un air fait pour eux 
  } 
  
stanza_four_first = \lyricmode 
  {\set fontSize = #-2 
   \set stanza = "4." Sous4 le ciel de2 Pa4 -- ris4  coule un fleu -- ve joy -- eux hm hm 
    il en -- dort dans la nuit les clo -- chards et les gueux
  } 

stanza_four_second = \lyricmode 
  {\set fontSize = #-2 
    Sous4 le ciel de2 Pa4 -- ris4 Les oi -- seaux du Bon Dieu hm hm 
    viennent "" du monde en -- tier pour ba -- var -- der entre eux
  } 

stanza_fifth = \lyricmode  
  {\set stanza = "5."
   Et le ciel de Pa -- ris a son se -- cret pour lui 
   de -- puis vingt sie -- cles il est a -- pris de notre Ile Saint "Loui."
  }

stanza_sixth = \lyricmode  
  {\set fontSize = #-2 
   \set stanza = "6."
   Quand elle "lui " "" sou -- rit il met son hab -- it bleu  hm hm 
   quand il pleut sur Pa -- ris c'est qu'il est mal -- heur -- eux
  }
stanza_seventh = \lyricmode  
  {\set fontSize = #-2 
   \set stanza = "7."
  Mais le ciel de Pr -- ris n'est pas long -- temps cru -- el hm hm
  pour se fair par  -- don -- ner il offr'un arc en ci -- el 
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


  \new Lyrics \lyricsto "stanza" {
    \stanza_one_first \stanza_second \stanza_third
  }
  \new Lyrics \lyricsto "stanza"
    \stanza_one_second

  \new Lyrics \lyricsto "stanza" {
    \stanza_four_first \stanza_fifth \stanza_seventh
  }
  \new Lyrics \lyricsto "stanza" {
    \stanza_four_second
  }
    
  \new Lyrics \lyricsto "stanza" {
    \stanza_sixth 
  }
  
  \new Lyrics \lyricsto "stanza" {
    \stanza_four_second
  }

  >>

%}
  \layout { }
  \midi { \tempo 2=120 }
}


%\markup \vspace #2 % space between header and score
%  \markup \fontsize #-1 {
%    \stanza_tabloid 
%  }
