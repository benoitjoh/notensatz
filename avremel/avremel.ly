\version "2.20.0"

\header {
  title = \markup \caps  {"Avremel"}
  composer = "Mordechai Gibirtig"
  tagline = \markup {
  \tiny j.b. \tiny #(strftime "%Y-%b-%d" (localtime (current-time)))
  }
}
global = { 
  \time 2/4 
  \key f \minor  }

melodie = 
  { e8 f e4 gis8 a gis8. f16 f8 e4.~ e4. r8 gis8 a b4 c'8 b c' a \break
    b gis4.~ gis4 r8 e gis a gis8. e16 gis8 a b c' b2~ b4. r8 \break
    e8 f e4 gis8 a gis8. f16 f8 e4.~ e4. r8 gis8 a b4 c'8 b c' a \break
    b8 gis4.~ gis4 r8 gis8 a d e f gis a f gis e2~ e8 e a b \break
    c'4 b8. a16 c'8 c' b a gis b4.~ b8 e8 b c'  d'4 b d'8 d' c' b  \break
    d' c'4.~ c'8 a c' d' e'4  d'8 c' e' d' f' e' d'2~ d'8 e b c' \break 
    d'4 b8. b16 c'8 b c' d' e' r8 d' r c' e a b c'4 b8. a16 c'8 c' b a \break 
    gis 8 b4.~ b8 e b c' d'4 b d'8 d' c' b d' c'4.~ c'8 a c' d' \break 
    e'4 d'8 c' e' g' f' e' d'2~ d'8 a b c' d'4 e' d'8 c' b c' \break 
    a2~ a4 r4 gis8 (a b4) b8 (a gis a)  c'8 b4.~ b2 gis8 (a b4) b8 ( a gis f) \break
    e2~ e gis8 ( a b4) d'8 (c' b a) gis8 a4.~ a2 a8 (d e f ) gis (a f gis) e2~ e4 r4  \bar "|." 
     }

akkorde = \chordmode {
    e2 s s s s a:m e s s s s s e s s s s f e s d:m e s s a:m s e s d:m e:7
    a:m s s a:7 d:m s d:m f e a:m s s 
    e s s s a:m s s a:7 d:m s s e:7 a:m s e s s s s s e s d:m a:m s s d:m e
    }

text = \lyricmode 
  { \set fontSize = #-3
    On8 a heym4 bin8 ikh yung8. ge16 -- bli8 -- bn2..      s'hot8 di8 noyt4 mikh8 a -- roys ge -- 
    tri -- bn2.     ven8 ikh hob nokh8. keyn16 dray8 -- tsn your ge -- hat1
    in8 der fremd4 vayt8 fun ma8. -- mes16 oy8 -- gn2.     8 hot8 in shmuts4 mikh8  di gas der -- 
    tsoy -- gn2.     ge8 -- vor -- rn is fun mir a voy -- ler yat2 8 ikh bin Av -- 
    re4 -- ml8. der16 fe8 -- yik -- ster mar -- vi -- kher4. 8 a groy -- ser kin4 -- stler kh'ar8 -- bet laykht un
    zi -- kher4. 8 dos er -- shte mol4 kh'vel8 ge -- den -- ken bi --  za toyt2  8 a8 -- rayn in 
    tfi4 -- se 8. far16 lak8 -- khe --  nen a broyt8  8 oy8  8 oy kh'for nisht oyf mar4 -- kn8. vi16 ye8 -- ne pros8 -- te
    ya -- tn4. 8 kh'tsup 8 nor -- bay kar4 -- ge shmu8 -- tsi -- ke mag -- na -- tn4. 8 kh'bhin8 zikh me --
    kha4 -- ye8 ven kh'tap a -- za mag -- nat2 8 ikh8 bin Av -- re4 -- ml gor8 a voy -- ler
    "yat."2. 
    
  } 





\score {
<<
    
  \new ChordNames
    \transpose a f 
    \akkorde

  \new Staff 
  {
   \global
   \clef treble
   \transpose a f' 
   \melodie
  }
 
\new Lyrics 
   
  \text

>>


  \layout { }
  \midi {
    \tempo 4=100
  }
}