\version "2.20.0"

\paper {
  system-system-spacing.padding = #9
}

\header {
  title = "Shein Vi Di Livone"
  subtitle = "Intro"
  composer = "Katharina Müther"
  copyright = ""
  arranger = " "
  meter = \markup \italic {""}
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

\markup \vspace #1 % space between header and score

global = {
  \key d' \minor
  \time 4/4
}

intro_git = {
  a,2. d8 e    f2.~ f8 d8  e f   g2.~ g8 e8 f g  as2~ as4. f8 e4.~e16 bes16 a2~ 8 g8 e d cis bes, a,2.~ a,2 r2 \break
  \chordmode {
  d,2:m \p a,2 d,2.:m r4 d,2:m a,2 d,1:m g,2.:m gis,4 a,1 \break
  g,2:m d,2 g,2.:m r4 g,1:m7 s1 c,1~ c,2. c,4 f,2 g,4 gis,4 a,1 \break
  }
}
 
akkorde = \chordmode { 
    s1  d:m s4 g,1:m s4 des,1 s2 a, 
    }


intro_akk = {
  r1 <d, a, f d>2.  r4 r4 <g, bes, d bes >2. r2 gis, r1 <a, cis e a >1 r1 r2. r8 a8 \break
  a4.\f  f'8 cis'4.  e'8 d'2. r8 a8 
  a4. f'8 cis'4.  e'8 d'1  (e'4) e'8 d' cis'4 bes a1  \break
  d4. bes8 fis4.  a8  g1 g4 d2 bes,8 a,8 g,1 g4 g e d c2 bes2 a1~ a2 r2  \break
}


\score {
<<
%  \new ChordNames    \akkorde

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  } { 
    \clef "treble_8"
    \tempo "Ad libitum"
     {
    \global
    \intro_git
    }
  
  }

  \new PianoStaff \with {
    midiInstrument = "Piano"
    instrumentName = "Akkordeon"
  } { 
      \clef "bass"
      {
      \global
      \intro_akk
      }  
    }
 
>>



\layout { }
  \midi {
    \tempo 4=150
  }
}
