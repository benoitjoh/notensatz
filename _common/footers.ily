\version "2.20.0"

% simple line with pagenumbers in the center
% left side
copyrightcol =  \markup { 
  \fontsize #-3 
  \italic {
    \with-url #"https://github.com/benoitjoh/notensatz" "j.benoit" 
    "/" 
    \with-url #"http://lilypond.org/" "lilypond.org" 
    }
}

% center
pagenumcol = \markup {
  \fontsize #-1 
  \italic { 
    "- " \fromproperty #'page:page-number-string  " - "
  } 
}

% right side
namecol = \markup {
  \fontsize #-3 \italic  { 
    \piecename_footerline "/" \version_date 
  } 
}
    


footer_common_with_pagenum = \paper {
  
   % some defaults for page breaking
   #(set-paper-size "a4")
   ragged-bottom = ##f
   page-breaking = #ly:optimal-breaking

   system-system-spacing = #'((basic-distance . 10)
                       (minimum-distance . 5)
                       (padding . 1)
                       (stretchability . 40))

% spacing at the bottom of the page
   bottom-margin = #8
   last-bottom-spacing.basic-distance = #10

   % footer / head line
   print-page-number = ##t %suppress the regular page number
   oddHeaderMarkup = \markup \null
   evenHeaderMarkup = \markup \null
   oddFooterMarkup = \markup { \fill-line { \copyrightcol \pagenumcol \namecol } }
   evenFooterMarkup = \oddFooterMarkup 
}


