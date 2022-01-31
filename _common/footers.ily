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
                       (stretchability . 40))


   % footer line
   print-page-number = ##f %suppress the regular page number
   oddFooterMarkup =  \markup { 
     \fill-line  { 
       % left side
       \fontsize #-3 \italic
          \concat {
              \with-url #"https://github.com/benoitjoh/notensatz" "jb." 
              " / " 
              \with-url #"http://lilypond.org/" "lilypond.org" 
             }
       % center
       \italic \concat {
         "- " \fromproperty #'page:page-number-string  " - "} 
       
       % right side
       \fontsize #-3 \italic
         \concat {
           \piecename_footerline
           " / " 
             #(strftime "(%m.%Y)" (localtime (current-time))) 
           } 
         
                   
      }
        
    }
   evenFooterMarkup = \oddFooterMarkup
}

