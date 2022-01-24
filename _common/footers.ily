\version "2.20.0"

% some useful makros
box_a = \markup { \bold \box "A" }
box_b = \markup { \bold \box "B" }


% simple line with pagenumbers in the center
footer_common_with_pagenum = \paper {
   #(set-paper-size "a4")

   oddFooterMarkup =  \markup { 
     \vspace #1
     \fill-line  { \fontsize #-2 \italic 
                   { \concat {
                        \with-url #"https://github.com/benoitjoh/notensatz" "jb." 
                        " / " 
                        \with-url #"http://lilypond.org/" "lilypond.org" 
                       }
                     \concat { "- " \fromproperty #'page:page-number-string  " - "}  
                     #(strftime "%d. %B %Y" (localtime (current-time))) } }
        
    }
   evenFooterMarkup = \oddFooterMarkup
}

