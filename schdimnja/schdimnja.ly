\version "2.20.0"

\paper {
  system-system-spacing.padding = #4
  #(set-paper-size "a4")
}
\header {
  title = \markup \caps  {"Жди меня, и я вернусь"}
  composer = "Russia (~1942)"
  tagline = \markup {
  \halign #-13  \abs-fontsize #8 \italic { "jb. / lilypond.org"  #(strftime "%d. %B %Y" (localtime (current-time)))}
  }
}

global = {
  \key b \minor
  \time 4/4
}

% -- data ------------------------------------------------

melodie = {

  b,8 cis d2 b,4 d8 cis e2. e4. cis8 e4. d8 d1 \break
  d8 e fis2 d4 fis8 e g2. g4. fis8 g4. a8 fis2. g8 a \break 
  b4. b8 cis'4. cis'8 a1 g4. fis8 g4. a8 fis1 \break
  e8 fis8 g2 b4 b,8 cis d2. cis2. b,4 cis2 d2 b,1 r1
  \break
  
  
   
}
akkorde = \chordmode { 
    b1:m e:m fis:7 b:m 
    b1:m e:m a:7 d2. d4:7 
    g2 cis:7 fis1:m 
    g2 a:7 d1
    e1:m b:m e:m fis:7 b:m fis:7
    }



words = \lyricmode { 
  \set stanza = "1."
  \set fontSize = #0
  Жди,8 ме -- ня,2  и4 я8 "вер"8 " -  нусь,"2. Тол4. -- ько8 оч4. -- ень8 жди,1
  Жди,8 ког8 -- да2 на4 -- вод8 -- ят8 "  грусть"2.  Жел4.  -- "ты  "8 -- " е"4. дож8 -- ди,2. Жди,8 "  ког"8 -- 
  да4. сне8 -- га4. ме8 -- тут,1 Жди,4. "ког  "8 -- " да"4. жа8 -- ра,1
  Жди,8 " ког -"8  " да"2 дру4 -- гих8 не8 ждут,2. По2. -- за4 -- "быв"2 "вче"2 -- ра.1 
}



% -- container ---------------------------------------------


\markup \vspace #4 % space between header and score

\score {
  
%MIDI-ON%  \unfoldRepeats { %directive do this only on midigenreration

<<
  
  \new ChordNames
    \akkorde
    
  \new Staff \with {
    midiInstrument = "Acoustic Guitar (nylon)"
    instrumentName = "Vocal"
    } 
    { 
    \clef "treble"
    \transpose c c'
    {
    \global
    \melodie
    }  
  }
  
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
      \words
    }


>>
%MIDI-ON% } % directive do this only on midigenreration



\layout { }
  \midi {
    \tempo 4=120
  }
} % score
\markup \vspace #4 % space score and table

\markup \fontsize #+1 {
  \fill-line {
    \hspace #1
    \column {
      \line { \bold {2.} Пусть поверят сын и мать }
      \line { В то, что нет меня, }
      \line { Пусть друзья устанут ждать, }
      \line { Сядут у огня, }
      \line { Выпьют горькое вино }
      \line { На помин души... }
      \line { Жди. И с ними заодно }
      \line { Вы - пить не спеши }
    }
    \hspace #1
    \column  {
      \line { \bold {3.} Жди меня, и я вернусь, }
      \line { Всем смертям назло. }
      \line { Кто не ждал меня, тот пусть }
      \line { Скажет: - Повезло. }
      \line { Не понять, не ждавшим им, }
      \line { Как среди огня }
      \line { Ожиданием своим }
      \line { Ты спасла меня. }
    }
    \hspace #1
    \column  {
      \line { \bold {4.} ...  }
      \line { ... }
      \line { ... }
      \line { ...  }
      \line { Как я выжил, будем знать }
      \line { Только мы с тобой,- }
      \line { Просто ты умела ждать, }
      \line { Как никто другой. }
   }
    \hspace #1
  }
}