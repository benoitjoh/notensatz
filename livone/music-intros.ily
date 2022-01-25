\version "2.20.0"


\addQuote "voice_concha_melodie"  
  {
    %\override Tie #'direction = #DOWN does not work...
    r4 a2.~ a8 a a a a bes c' bes a1~ a8 a a a a bes c' bes \break
    \stemUp a16 bes a8~ a2.~ a2 \tuplet 3/2 {a4 bes a}  g16 f g8~ g2.~ g2~ g8 g g g g g f g \break
     a g  \tuplet 3/2{f8 g a} a2~ a8 a a a a bes c' bes a16 bes a8~ a2.\fermata r1
  }

voice_concha_base = 
  {
    \cueDuring "voice_concha_melodie" #UP 
    { 
      a,1^\markup \italic \fontsize #-2"  (1st voice is played one octave lower)"\fermata  s1 a,1 \fermata 
      s1  a,2 a,2 \fermata s1  g,1  \fermata s1 s1  a,1 \fermata s1 
    }
  }


\addQuote "voice_intro_basso" 
  { \bass_spacer %s1*27 defined by layout file
    a8. a16 g4 f4 e }

voice_intro_guitar = 
  {
    \set Score.currentBarNumber = #13
    a,2. d8 e    f2~ f8 d8  e f   g2~ g8 e8 f g  as4~ as8 f8 e4.~e16 bes16 a4~ 8 g8 e d cis bes, a,1 \break  
    \chordmode {
    d,2:m a,2 d,2.:m r4 d,2:m a,2 d,1:m g,2.:m as,4 a,1 \break
    g,2:m d,2 g,2.:m r4 g,1:m7 s1 c,1~ c,2. c,4 f,2 g,4 gis,4 a,1 \break
    d,2:m a,2 d,2.:m r4 d,2:m a,2 d,1:m g,2.:m gis,4 a,2 g,2:m~_> g,1:m}
    <>^\markup { \right-align  \tiny { "Basso" \italic "(slower)"} }
  
    \cueDuring "voice_intro_basso" #UP 
      { <a, cis e >1 }
  }
 
voice_intro_chords = 
  \chordmode 
    { 
      s1  d1:m  g1:m as,1 a s1 d2:m a2 d1:m d2:m a2 d1:m   g2.:m as4 a1
      g2:m d2:7 g1:m g:m7 s1 c1 s2 c2 f1 s1  d2:m a2 d1:m d2:m a2 d1:m a2. as4 a2 g1.:m a1:7
    }


voice_intro_accordion = 
  {
    \clef "treble"
  
    r1 <d' a' f' d''>1  (<g d' g' bes' >1  <as c' es' as'>1  <a cis' e' a' >1) r2 r4 r8 a8 
    a4.  f'8 cis'4.  e'8 d'2. r8 a8 
    a4. f'8 cis'4.  e'8 d'1  (e'4) e'8 d' cis'4 bes a2. r8 d'8 
    d'4. bes'8 fis'4.  a'8  g'1 g'4 d'2 bes8 a8 g1 g'4 g' e' d' c'2 bes'2 a'1~ a'2 r4 r8 a8 
    a4.  f'8 cis'4.  e'8 d'2. r8 a8 
    a4. f'8 cis'4.  e'8 d'1  (e'4) e'8 d' cis'4 bes a2 bes'~^> bes'  \fermata e'4. e'8 a'1 \fermata
  }
