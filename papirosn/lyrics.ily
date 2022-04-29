\version "2.20.0"


stanza_one_first = \lyricmode 
  {\set fontSize = #-2 \set stanza = "1."
   A8 kal -- te nakht a ne -- pl -- di -- ke fin -- ster um -- e -- tum,2  
   shteyt a yin -- ge -- le far -- troy -- ert un kukt zikh a -- rum.2 
  Fun8 re -- gn shitst im nor a vant, a ko -- shi -- kl halt er in hant, 
  un zay -- ne oy -- gn be -- tn ye -- dn shtum2. Ikh
  } 

stanza_one_second = \lyricmode 
  {\set fontSize = #-2 
   ""8 hob shoyn nit keyn ko -- yek mer a -- rum -- tsu -- geyn in gaz,2 
   hun -- ge -rig un op -- ge ri -- zn fun dem re -- gn naz.2 
   Ikh shlep a -- rum zig fun ba -- gi -- nen,
   key -- ner git nisht tsu far -- di -- nen, 
   a -- le la -- ken, ma -- khn fun mir ""1 ""8 shpaz2 
   \set stanza = "Refr." Ku -- pit -- ye
  } 

refrain_first = \lyricmode {
  \set fontSize = #-2
  koyft she,  koyft she pa -- pi -- ro -- sn, 
  tru -- ke -- ne fun re -- gn nisht far -- go - zn. 
  Koyft she bi -- lik be -- ne -- mo -- nes, 
  koyft un hot oyf mir rakh -- mo -- nes 
  ra -- te -- ve fun hun -- ger mikh a tzind. Ku -- pit ye
}

refrain_second = \lyricmode {
  \set fontSize = #-2
  koyft she shve -- be -- lakh an -- tik -- n, 
  der -- mit verd ir a yos -- i -- ml der8 -- kvi8 -- kn. 
  Umzitz mayn shra -- yen un mayn loy -- fn, 
  key -- ner vil bay mir nit koy -- fn, 
  oys -- geyn vel ikh mu -- zn vi a ""2 ""4 ""4 ""4 ""4 hunt. 
}


stanza_tabloid = 
  \markup \fontsize #-1 {
    \fill-line {
      \hspace #1
      \column {
        \line { \bold {2.} Mayn tate in milkhome hot farloyrn zayne hent, }
        \line { mayn mame hot di tsores mer oyshaltn nisht gekent. }
        \line { Yung in keyver zi getribn, }
        \line { bin ikh oyf der velt farblibn, }
        \line { ungliklekh un elnt vi a shteyn. }
        \line { Breklekh klayb ikh oyf tsum ezn oyf dem kaltn mark, }
        \line { a harte bank iz mayn geleger in dem kaltn park. }
        \line { In dertsu di politziantn, shlog mikh shvern kantn, }
        \line { z'helft nit mayn betn, mayn geveyn.  }
      }
      \hspace #1
      \column  {
        \line { \bold {3.} Ikh hob gehat a shvesterl, a kind fun der natur, }
        \line { mit mir tsusamen zikh geshlept hot zi a gants yor. }
        \line { Mit ir geven iz mir fil gringer, }
        \line { laykhter vern flegt der hunger, }
        \line { ven ikh fleg a kuk ton nor oyf ir.  }
        \line { Mit amol gevorn iz zi shvakh un zeyer krank, }
        \line { oyf mayne hent iz zi geshtorbn oyf a gazn-bank. }
        \line { Un az ikh hob zi farloyrn, hob ikh alts ongevoyrn, }
        \line { zol der toyt shoyn kumen oykh tsu mir. }
      }
      \hspace #1
    }
  }
  
