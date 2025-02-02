\version "2.20.0"

voice_violin = \fixed c'' { 
  \mark #1 
  %line1
  as16 16 8 f8 as16 16 |
  as16 f as f as4 |
  bes16 16 8 g8 bes 16 16|
  bes16 g bes g bes4 |
  as16 16 8 f8 as16 16 |
  as16 f g as b4  | 
  f16 g as b  f16 g as b |
  as8 g g4 \break
 
  %line 2
  as16 16 8 f8 as16 16 |
  as16 f as f as4 |
 
  bes16 g bes g bes g bes g  |
  bes16 g bes g bes4 |\break
  as16 16 8 f8 as16 16 |
  as16 f g as b4  | 
  f16 g as b  f16 g as b |
  as8 g g4 \break
 
  %line 3
  \mark #2 
  c'2 |
  as8. f16 b4|
  c'4 ~8. b16 |
  as8. g16 as4 |\break
  as4 e16 f g as |
  b8 as g f |
  g2 ~2  \break

  %line 4
  as2  ~8 b b as |
  c' b b4 (b2) (b4) e16 f g as |
  b8 as g f |
  g2 (2) \break
   
  %line 5
  \mark #3 
  r2 r2 r2 r2
  r8 <f,c> r8 <f,c> |
  r8 <f,c> r8 <f,c> |
  r8 <g,d> r8 <g,d> |
  r8 <e,c> r8 <e,bes,> | \break
  
  \mark #4
  \repeat volta 2{ 
  r8 <f,c> r8 <f,c> |
  r8 <f,c> r8 <f,c> |
  r8 <g,d> r8 <g,d> |
  r8 <e,c> r8 <e,bes,> | 

  r8 <f,c> r8 <f,c> |
  r8 <f,c> r8 <f,c> |
  r8 <g,d> r8 <g,d> |
  r8 <e,c> r8 <e,c> | 
  }
}