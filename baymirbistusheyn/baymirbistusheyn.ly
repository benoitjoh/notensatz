\version "2.20.0"

\paper {
  system-system-spacing.padding = #3
  #(set-paper-size "a4")
}
\header {
  title = "Bay mir bistu sheyn"
  composer = "Sholom Secunda,"
  copyright = ""
  arranger = "Jacob Jacobs (1932)"
  meter = \markup \italic {""}
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

\markup \vspace #1 % space between header and score

global = {
  \key c \minor
  \time 2/4
}

melodie = {
   \override TupletBracket.bracket-visibility = ##t
   \tupletUp
   s4.^"Strophe" g16 g16 es'8 8 8  d'16 c' 
   g'8 d' r16 g16 c' d' es'8 8 8 d'16 c'  \break
   g'8 d' r16 g c' d es'8 8 8 d'16 c' 
   f'8 16 16 8 es'16 d' g'8 8 fis' \tuplet 3/2 {es'16 fis' es'} \break
   d'4 r16 g16 c'd' es'8 8 8 d'16 c' 
   g'8 d' r16 g16 c'd' es'8 8 8 d'16 c' \break
   g'8 d' r16 g16 c'd' \tuplet 3/2 {es'8 es' es'} \tuplet 3/2 {es'8 8 d'16 c'}
   \tuplet 3/2 {as'8 8 8} \tuplet 3/2 {as'8 8 g'16 f'} \break
   es'8 c' d' g c'2 f'8 8 f'16 es' d' c' d'2
   as'8 8 16 g' f' es' g'4. g8 \break
   \repeat volta 2 {
     es'4^"Refrain" d'8 c' es'4. g8 es'4 d'8 c' es'4. 8 d' b4 g8 d'4 es'8 d' c'4 r4r r8 g es'4 d'8 c' \break
    es'4. g8 es'4 d'8 c' es'4. 8 d' b4 g8 d'4 es'8 d'c'2~ 8 8 d'es' f' r c' f'~ \break
    8 8 es' d' es' r c' 8 8 8 8 d' es' f' r c' f'~ 8 8 es' f' \break
    g' r g g g4 r8 g es'4 d'8 c' es'4. g8 es'4 d'8 c' \break
    es'4.  8 d' b4 g8 d'4 es'8 d'
    }
    \alternative {
     { c'2~ 4 r8 g }
     { c'2~ c'4 r4}
      
   }
   %\bar "|."
  }

 
akkorde = \chordmode { 
    s2 c2:m g2:m
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-1
  ""4. Ven16 du solst8 sayn shvartz vi16 a to8 -- "ter."8 16 Ven du host oy8 -- gen vi bay16 a 
  ko8 -- ter.8  16 un ven du hinkst8 tsu bis -- lakh16 Host hilt8 -- ser16 -- ne fis8 -- lakh16 Zog ikh8 dos art8 "   mikh"
  nit.4 16 Un ven du host8 a na -- ri16 -- shen shmey8 -- chl.8 16 un ven du host8 vay -- zo -- " sos__"
  sey8 -- khl8 16 Ven du bist 
  \tuplet 3/2 { vild8 vi in } -- di16. -- aner16.   "Bist "32  a32  
  \tuplet 3/2 { fi8 -- li -- ga } -- lits16. -- ya16. -- "ner "32  Sog32 
  ikh8 dos art mikh nit
  
}



\score {
%MIDION%  \unfoldRepeats { %directive do this only on midigenreration  
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #+1
  }
  \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Vocal"
  } 
  { 
    \clef "treble" 
    \tempo "Moderate"
    \transpose c c'
    {
    \global
    \melodie
    }
  
  }
% textstrophen
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2  %spacer before textlines
  }
  {
    \stanza_one
  }



>>
%MIDION%  } %directive do this only on midigenreration


  \layout {
  }
  \midi {
    \tempo 4=60
  }
}
