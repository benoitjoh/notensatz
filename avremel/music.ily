\version "2.20.0"

global = { 
  \time 2/4 
  \key f \minor  }

voice_vocal = 
  { \clef treble 
    <>^\markup { \bold \box A } c'8  des'^\markup \italic"Recitativo" c'4 e'8 f' e'8. des'16 des'8 c'4.~ c'4. r8 e'8 f' g'4 as'8 g' as' f' \break
    g' e'4.~ e'4 r8 c' e' f' e'8. c'16 e'8 f' g' as' g'2~ g'4. r8 \break
    c'8 des' c'4 e'8 f' e'8. des'16 des'8 c'4.~ c'4. r8 e'8 f' g'4 as'8 g' as' f' \break
    g'8 e'4.~ e'4 r8 e'8 f' bes c' des' e' f' des' e' c'2~ c'8 c'^\markup { \bold \box B } f'^\markup \italic"Refrain"  g' \break
    as'4 g'8. f'16 as'8 as' g' f' e' g'4.~ g'8 c'8 g' as'  bes'4 g' bes'8 bes' as' g'  \break
    bes' as'4.~ as'8 f' as' bes' c''4  bes'8 as' c'' bes' des'' c'' bes'2~ bes'8 c' g' as' \break 
    bes'4 g'8. g'16 as'8 g' as' bes' c'' r8 bes' r as'-. c' (f' g') as'4 g'8. f'16 as'8 as' g' f' \break 
    e' 8 g'4.~ g'8 c' g' as' bes'4 g' bes'8 bes' as' g' bes' as'4.~ as'8 f' as' bes' \break 
    c''4 bes'8 as' c'' es'' des'' c'' bes'2~ bes'8 f' g' as' bes'4 c'' bes'8 as' g' as' \break 
    f'2~ f'4 r4^\markup { \bold \box C } e'8^\markup\italic"Coda" (f' g'4) g'8 (f' e' f')  as'8 g'4.~ g'2 e'8 (f' g'4) g'8 ( f' e' des') \break
    c'2~ c' e'8 ( f' g'4) bes'8 (as' g' f') e'8 f'4.~ f'2 f'8 (bes c' des' ) e' (f' des' e') c'2~ c'4 r4  \bar "|." 
     }

voice_chords = \chordmode 
  { \override ChordName.font-size = #0
    c2 s c s c f:m c s s c s s c s c s c des c s bes:m s c  s f:m s c s bes:m c:7
    f:m s f:m f:7 bes:m s bes:m des4 des c c f:m r f2:m s 
    c s bes:m c f:m s f:m f:7 bes:m s s c:7 f:m s c s c s c s c s bes:m f:m f:m s bes:m c c
    }

stanza_one = \lyricmode 
  { 
    \set fontSize = #-2
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
