\version "2.20.0"

\paper {
  system-system-spacing.padding = #3
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

concha_git =  { a1~ a8 a a a a bes c' bes a1~ a8 a a a a bes c' bes \break
                \stemUp a16 bes a8~ a2.~ a4 a bes a g1~ g8 g g g g g f g \break
                a g  \tuplet 3/2{f8 g a} a2~ a8 a a a a bes c' bes \stemUp a16 bes a8~ a2. \fermata }
concha_git_base = {a,1 s1 a,1 s1 a,2 a,2 s1  g,1 s1 s2 a,2 s1 a,1}

intro_git = {
  a,2. d8 e    f2~ f8 d8  e f   g2~ g8 e8 f g  as4~ as8 f8 e4.~e16 bes16 a4~ 8 g8 e d cis bes, a,1  
  \chordmode {
  d,2:m \p a,2 d,2.:m r4 d,2:m a,2 d,1:m g,2.:m gis,4 a,1 \break
  g,2:m d,2 g,2.:m r4 g,1:m7 s1 c,1~ c,2. c,4 f,2 g,4 gis,4 a,1 \break
  }
}
 
akkorde = \chordmode { 
    s1  d:m s4 g,1:m s4 des,1 s2 a, 
    }


intro_akk = {
  r1 <d' a' f' d''>1\p  (<g d' g' bes' >1  gis1  <a cis' e' a' >1) r2 r4 r8 a8 
  a4.  f'8 cis'4.  e'8 d'2. r8 a8 
  a4. f'8 cis'4.  e'8 d'1  (e'4) e'8 d' cis'4 bes a2. r8 d'8 
  d'4. bes'8 fis'4.  a'8  g'1 g'4 d'2 bes8 a8 g1 g'4 g' e' d' c'2 bes'2 a'1~ a'2 r2  
}

\score {
  \new Staff  \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  }
  <<
    \new Voice = "first"
        \tempo "Ad libitum"
        \clef "treble_8"
          { \voiceOne \concha_git }
    \new Voice= "second"  
        \clef "treble_8"
         { \voiceTwo \concha_git_base }
  >>
  
\layout { }
  \midi {
    \tempo 4=120
  }
}

\score {
<<
%  \new ChordNames    \akkorde

\new Staff \with {
    midiInstrument = "Piano"
    instrumentName = "Akkordeon"
  } { 
      \clef "treble"
      {
      \global
      \intro_akk
      }  
    }
 
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
>>



\layout { }
  \midi {
    \tempo 4=100
  }
}
