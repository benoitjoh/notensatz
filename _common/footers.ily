\version "2.20.0"

% simple line with pagenumbers in the center
footer_common_with_pagenum = \paper {
  
   oddFooterMarkup =  \markup { 
     \vspace #2
     \fill-line  { \fontsize #-2 \italic 
                   { "jb. / lilypond.org" 
                     \concat { "- " \fromproperty #'page:page-number-string  " - "}  
                     #(strftime "%d. %B %Y" (localtime (current-time))) } }
        
    }
   evenFooterMarkup = \oddFooterMarkup
}
