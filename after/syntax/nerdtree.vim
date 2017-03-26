
" syn match plop "a"
" syn match plop "^\s\+.*html$"
" syn match plop "^\s\+.*html$" " space at lest one time
" syn match plop "^\s\+.*geo-conf.html$" " space at lest one time
syn match nerdText "^\s\+.*\(md\|tex\|bib\|txt\).\?$" " space at least one time
syn match nerdCompile "^\s\+.*\(pdf\|csv\).\?$"
syn match nerdWeb "^\s\+.*\(yml\|html\|css\|php\|js\).\?$"
syn match nerdLow "^\s\+.*\(c\|cpp\).\?$"
syn match nerdStat "^\s\+.*\(R\|cpp\|RData\).\?$"
syn match nerdPy "^\s\+.*\(py\).\?$"

hi! link nerdText GruvboxGreen
hi! link nerdCompile GruvboxYellow
hi! link nerdWeb GruvboxPurple
hi! link nerdLow GruvboxRed
hi! link nerdStat GruvboxBlue
hi! link nerdPy GruvboxOrange


hi! link NERDTreeDir GruvboxAquaBold
hi! link NERDTreeUp GruvboxAquaBold
hi! link NERDTreeOpenable GruvboxAquaBold
hi! link NERDTreeClosable GruvboxAquaBold
