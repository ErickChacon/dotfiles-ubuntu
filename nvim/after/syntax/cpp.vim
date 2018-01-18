
  " hi! link Function GruvboxAqua
  hi! link Function GruvboxAqua
  hi! link cCustomFunc GruvboxAqua
  hi! link cCustomScope GruvboxRed
  " hi! link Operator GruvboxRed
  hi! link cppRawDelimiter GruvboxRed
  " hi! link StorageClass GruvboxRed

  " hi! link cComment GruvboxRed

syn match Special "\((\|)\|\[\|\]\|{\|}\)"

syn match Operator "\(/\)" contains=ALLBUT,cComment
syn match Operator "\(,\|:\|\.\|=\|;\|*\|+\|-\|<\|>\|!\)"

hi! link Operator GruvboxRed

