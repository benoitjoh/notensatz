\version "2.20.0"

% simple line with pagenumbers in the center
footer_common_with_pagenum = \paper {
  
   % some defaults for page breaking
   #(set-paper-size "a4")
   ragged-bottom = ##f
   page-breaking = #ly:optimal-breaking

   system-system-spacing = #'((basic-distance . 10)
                       (minimum-distance . 5)
                       (padding . 1)
                       (stretchability . 20))


   % footer line
   print-page-number = ##f %suppress the regular page number
   oddFooterMarkup =  \markup { 
     \fill-line  { \fontsize #-3 \italic 
                   { \concat {
                        \with-url #"https://github.com/benoitjoh/notensatz" "jb." 
                        " / " 
                        \with-url #"http://lilypond.org/" "lilypond.org" 
                       }
                     \concat {\fontsize #-1 "- " \fromproperty #'page:page-number-string  " - "}  
                     \fontsize #-3 #(strftime "%d. %B %Y" (localtime (current-time))) } }
        
    }
   evenFooterMarkup = \oddFooterMarkup
}

