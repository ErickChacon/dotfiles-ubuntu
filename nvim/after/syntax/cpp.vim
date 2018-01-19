" Additional cpp syntax file
" Language:	      c++
" Maintainer: Erick Chacon
" Description: Additional cpp syntax file

" Matching delimiters
syn match Special "\((\|)\|\[\|\]\|{\|}\)"

" Matching operators
syn match Operator "\(/\)" contains=ALLBUT,cComment
syn match Operator "\(,\|:\|\.\|=\|;\|*\|+\|-\|<\|>\|!\)"

" Namespace libraries
hi! link cCustomClass Identifier
" Scope ::
hi! link cCustomScope Operator

" Custom color using gruvbox colorscheme
if g:colors_name == 'gruvbox'
  " hi! link Function GruvboxAqua
  hi! link cCustomFunc GruvboxAqua
  hi! link Operator GruvboxRed
endif
