\version "2.20.0"

\paper {
  system-system-spacing.padding = #1.3
  #(set-paper-size "a4")
%WITHEMPTYSTAFF-ON% system-system-spacing.padding = #8

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

\markup \vspace #0 % space between header and score

global = {
  \key e \minor
  \time 2/4
}

melodie = {
   \override TupletBracket.bracket-visibility = ##t % make "triolen" brackets visible
   \tupletUp
   s4.^"Stanza" b16 b16 g'8 8 8  fis'16 e' 
   b'8 fis' r16 b16 e' fis' g'8 8 8 fis'16 e'  \break
   b'8 fis' r16 b e' fis' g'8 8 8 fis'16 e' 
   a'8 16 16 8 g'16 fis' b'8 8 ais' \tuplet 3/2 {g'16 ais' g'} \break
   fis'4 r16 b16 e'fis' g'8 8 8 fis'16 e' 
   b'8 fis' r16 b16 e'fis' g'8 8 8 fis'16 e' \break
   b'8 fis' r16 b16 e'fis' \tuplet 3/2 {g'8 g' g'} \tuplet 3/2 {g'8 8 fis'16 e'}
   \tuplet 3/2 {c''8 8 8} \tuplet 3/2 {c''8 8 b'16 a'} \break
   g'8 e' fis' b e'2 a'8 8 a'16 g' fis' e' fis'2
   c''8 8 16 b' a' g' b'4. b8 \break
   \repeat volta 2 {
     \mark \markup { \bold \fontsize #-1 \circle a }
     g'4^"Refrain" fis'8 e' g'4.  b8 g'4 fis'8 e' g'4. 8 
     fis' dis'4 b8 fis'4 g'8 fis' e'4 r4r r8  b^\markup { \bold \circle a } g'4 fis'8 e' \break
     g'4. b8 g'4 fis'8 e' g'4. 8 fis' dis'4 b8 
     fis'4 g'8 fis'e'2~ 8 8 fis'^\markup { \bold \circle b } g' a' r e' a'~ \break
     8 8 g' fis' g' r e' 8 8 8 8 fis' g' a' r e' a'~ 8 8 g' a' \break
     b' r b b b4 r8 b^\markup { \bold \circle a }  g'4 fis'8 e' g'4. b8 g'4 fis'8 e' \break
     g'4.  8 fis' dis'4 b8 fis'4 g'8 fis'
   }
   \alternative {
     { e'2~ 4 r8 b }
     { e'2~ e'4 r4}
   }
 }

 
akkorde = \chordmode { 
    s2 e:m a4:m b:7 e2:m a4:m b:7 e2:m a:m e:m b:7
    e2:m a4:m b:7 e2:m a4:m b:7 e2:m a:m e4:m b:7 e2:m a:m b:7 a:m b:7 
    \repeat volta 2 {
       e2:m s e:m s b:7 s e:m s e:m s e:m s b:7 s e:m s a:m s e:m s a:m s b:7 s e:m s e:m s b:7 s
    }
    \alternative {
     { e2:m s2 }
     { e2:m s2 }
      
    }
    }

% lyrics

stanza_one = \lyricmode 
{ 
  \set fontSize = #-1
  ""4. Ven16 du solst8 sayn shvartz vi16 a 
  to8 -- ter.8 16 Ven du host oy8 -- gen vi bay16 a 
  ko8 -- ter.8  16 un ven du hinkst8 tsu bis -- lakh16 Host 
  hilt8 -- ser16 -- ne fis8 -- lakh16 Zog ikh8 dos art8 "   mikh"
  nit.4 16 Un ven du host8 a na -- ri16 -- shen 
  shmey8 -- chl.8 16 un ven du host8 vay -- zo -- " sos__"
  sey8 -- khl8 16 Ven du bist 
  \tuplet 3/2 { vild8 vi in } -- di16. -- aner16.   "Bist "32  a32  
  \tuplet 3/2 { fi8 -- li -- ga } -- lits16. -- ya16. -- "ner "32  Sog32 
  ikh8 dos art mikh nit.2 Sog8 mir vi16 er -- klers du dos?2 
  Vil8 dir so16 -- gn bald far -- vos.4. Bay8 
  \repeat volta 2 {
  mir4 bis8 -- tu sheyn4.  Bay8 mir4 hos8 -- tu kheyn4. bist8 
  ey -- ne4 bay8 mir4 oyf8 der velt2 4 8 Bay mir4 bis8 -- tu 
  git4. bay8 mir4 hos8 -- tu it4. Bay8 mir bis4 -- tu8 
  tay4 -- re8 fun gelt.2 8 Vil shey8 -- ne mey4 -- dlekh8 hob8 
  8 en shoyn ge -- volt4 ne8 -- men mich un ven si a8 8 l oys8 8 ge -- kli -- bin8 
  hob8 8 ikh nor dikh4 8 Bay mir4 bis8 -- tu sheyn4. Bay8 mir4 bis8 -- tu 
  kheyn4. bist8 ey -- ne4 bay8 mir4 oyf8 der 
  }
  \alternative {
     { velt.2 4 8 Bay8}
     { velt.2}
  }
}



\score {
%MIDION% \unfoldRepeats { %directive do this only on midigenreration  
<<
  \new ChordNames \with { 
    \override ChordName.font-size = #-0
  }
  \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Vocal"
  } 
  { 
    \clef "treble" 
    \tempo "Moderate"
    {
    \global
    \melodie
    }
  
  }
% textstrophen
  \new Lyrics \with {    
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1  %spacer before textlines
  }
  {
    \stanza_one
  }

%WITHEMPTYSTAFF-ON% \new Staff {\clef "moderntab" s2 * 55 }  % empty staff


>>
%MIDION%  } %directive do this only on midigenreration


  \layout {
  }
  \midi {
    \tempo 4=60
  }
}
