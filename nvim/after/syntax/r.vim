" set g:gruvbox_italicize_strings=1
" Match syntax
syn match rFunction "\v(\w|\.)+\(&(\w|\.)+"
hi! link rFunction GruvboxAqua

" syn keyword rDescr Title Desc Input Output Author Date containedin=rComment
syntax match rDescr "\(Title\|Desc\|Input\|Output\|Author\|Date\|Status\):" containedin=rComment
hi! link rDescr VimCommentTitle

" syn region rRegion start=/\{/ matchgroup=Delimiter end=/}/ transparent containedin=ALL
"
" Fold
" syn match rFolded "[a-z]" containedin=Folded
" hi! link rFolded GruvboxRed
" syn region rPlop matchgroup=Delimiter start=/{{{/ matchgroup=Delimiter end=/}}}/ transparent contains=ALLBUT,rError,rBraceError,rCurlyError fold
" "
"
" syn region cMarkerFold matchgroup=Comment start="{{{" end="}}}" containedin=rComment contains=ALL keepend extend fold transparent
" syn region myFold start="{{{" end="}}}" containedin=ALL transparent fold
"
" syn region rRegion matchgroup=Delimiter start=/SEC/ matchgroup=Delimiter end=/-/ transparent containedin=rComment fold
" syn region rRegion start=/{{{/  end=/}}}/ transparent containedin=ALL fold
" This folding is working but need to be improved somehow
" syn region rRegion start=/\s---/  end=/\s---/ transparent containedin=ALL fold
" syn region rRegion start=/^#\s.*-----/  end=/}}}/ transparent containedin=rComment fold
" syn region rRegion start=/^#\s.*-----/  end=/}}}/ transparent containedin=ALL fold

" from internet
" syn region cMarkerFold matchgroup=Comment start="{{{" end="}}}"
" containedin=cCommentL,cComment contains=ALL keepend extend fold
" transparent
" Gruvbox colors
" hi! link rComment GruvboxRed
" hi! link rSpecial GruvboxRed
hi! link rStatement GruvboxBlueBold
hi! link rConditional GruvboxBlueBold
hi! link rRepeat GruvboxBlueBold
" hi! link rConstant GruvboxRed
hi! link rBoolean GruvboxBlueBold
" hi! link rNumber GruvboxRed
" hi! link rInteger GruvboxRed
" hi! link rFloat GruvboxRed
" hi! link rComplex GruvboxRed
hi! link rAssign GruvboxRedBold
hi! link rOperator GruvboxRed
" hi! link rOpError GruvboxRed
hi! link rDelimiter GruvboxRed
" hi! link rError GruvboxRed
" hi! link rBraceError GruvboxRed
" hi! link rCurlyError GruvboxRed
" hi! link rParenError GruvboxRed
" hi! link rDollar GruvboxRed
" hi! link rLstElmt GruvboxRed
" hi! link rType GruvboxRed

" hi rComment guifg=#ec5f67 ctermfg=203
" hi rSpecial guifg=#ec5f67 ctermfg=203 " unicode characters
" hi rStatement guifg=#65737e ctermfg=203 " break next return
" hi rConditional guifg=#65737e ctermfg=203 " if else
" hi rRepeat guifg=#65737e ctermfg=203 " for in repeat while
" hi rConstant guifg=#65737e ctermfg=203 " T, F, letters, NULL, pi
" hi rBoolean guifg=#65737e ctermfg=203
" hi rNumber guifg=#65737e ctermfg=203 ", NA. Inf, NaN, numbers
" hi rInteger guifg=#65737e ctermfg=203 ", NA. Inf, NaN
" hi rFloat guifg=#65737e ctermfg=203 ", NA. Inf, NaN
" hi rComplex guifg=#65737e ctermfg=203 ", NA. Inf, NaN
" hi rAssign guifg=#65737e ctermfg=203 " =, <-, ->
" hi rOperator guifg=#65737e ctermfg=203 " & - *
" hi rOpError guifg=#65737e ctermfg=203 " >>, <<, |||
" hi rDelimiter guifg=#65737e ctermfg=203 "[,;:]
" hi rError guifg=#65737e ctermfg=203 " [)\]}]
" hi rBraceError guifg=#65737e ctermfg=203 "[)}]
" hi rCurlyError guifg=#65737e ctermfg=203 "[)\]]
" hi rParenError guifg=#65737e ctermfg=203 "[\]}]
" hi rDollar guifg=#65737e ctermfg=203 " $. @
" hi rLstElmt guifg=#65737e ctermfg=203 " list of elements
" hi rType guifg=#65737e ctermfg=203 " list of elements
"

" Define the default highlighting.
" hi Boolean guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Error guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Comment guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Todo guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Number guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Conditional guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Constant guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Delimiter guifg=#ec5f67 ctermfg=203 " unicode characters
" hi SpecialChar guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Float guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Function guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Identifier guifg=#ec5f67 ctermfg=203 " unicode characters
" hi PreProc guifg=#ec5f67 ctermfg=203 " unicode characters
" hi PreCondit guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Normal guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Operator guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Repeat guifg=#ec5f67 ctermfg=203 " unicode characters
" hi String guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Type guifg=#ec5f67 ctermfg=203 " unicode characters
" hi Statment guifg=#65737e ctermfg=203 " unicode characters
" hi! link rStatement GruvboxGreen
" Statement
" Boolean
" Error
" Comment
" Todo
" Number
" Conditional
" Constant
" Delimiter
" SpecialChar
" Float
" Function
" Identifier
" PreProc
" PreCondit
" Normal
" Operator
" Repeat
" String
" Type
"
"
" hi Number guifg=#f99157 ctermfg=209
" hi ModeMsg guifg=#99c794 ctermfg=114 " visual and buffer
" hi Normal guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235 " basic color
" hi LineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" hi StatusLine guifg=#a7adba ctermfg=145 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE " tmux
" hi StatusLineNC guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE "vm
" hi Constant guifg=#f99157 ctermfg=209
" hi Conditional guifg=#c594c5 ctermfg=176
" hi String guifg=#99c794 ctermfg=114
"
" hi Bold gui=bold cterm=bold
" hi Debug guifg=#ec5f67 ctermfg=203
" hi Directory guifg=#6699cc ctermfg=68
" hi ErrorMsg guifg=#ec5f67 ctermfg=203 guibg=#1b2b34 ctermbg=235
" hi Exception guifg=#ec5f67 ctermfg=203
" hi FoldColumn guibg=#343d46 ctermbg=237
" hi Folded guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" hi IncSearch guifg=#343d46 ctermfg=237 guibg=#f99157 ctermbg=209
" hi Italic gui=underline cterm=underline
" hi Macro guifg=#ec5f67 ctermfg=203
" hi MatchParen guifg=#c0c5ce ctermfg=251 guibg=#65737e ctermbg=243
" hi ModeMsg guifg=#99c794 ctermfg=114
" hi MoreMsg guifg=#99c794 ctermfg=114
" hi Question guifg=#6699cc ctermfg=68
" hi Search guifg=#65737e ctermfg=243 guibg=#fac863 ctermbg=221
" hi SpecialKey guifg=#65737e ctermfg=243
" hi TooLong guifg=#ec5f67 ctermfg=203
" hi Underlined guifg=#ec5f67 ctermfg=203
" hi Visual guibg=#4f5b66 ctermbg=240
" hi VisualNOS guifg=#ec5f67 ctermfg=203
" hi WarningMsg guifg=#ec5f67 ctermfg=203
" hi WildMenu guifg=#ffffff ctermfg=15 guibg=#6699cc ctermbg=68
" hi Title guifg=#6699cc ctermfg=68 gui=NONE cterm=NONE
" hi Conceal guifg=#6699cc ctermfg=68 guibg=#1b2b34 ctermbg=235
" hi Cursor guifg=#1b2b34 ctermfg=235 guibg=#c0c5ce ctermbg=251
" hi NonText guifg=#65737e ctermfg=243
" hi Normal guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
" hi LineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" hi CursorLineNR guifg=#ffffff ctermfg=15 guibg=#ffffff ctermbg=15
" hi SignColumn guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" hi StatusLine guifg=#a7adba ctermfg=145 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE
" hi StatusLineNC guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi VertSplit guifg=#4f5b66 ctermfg=240 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE
" hi ColorColumn guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi CursorColumn guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi CursorLine guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi CursorLineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" hi PMenu guifg=#a7adba ctermfg=145 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi PMenuSel guifg=#343d46 ctermfg=237 guibg=#a7adba ctermbg=145
" hi PmenuSbar guibg=#4f5b66 ctermbg=240
" hi PmenuThumb guibg=#d8dee9 ctermbg=253
" hi TabLine guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi TabLineFill guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi TabLineSel guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" hi Boolean guifg=#f99157 ctermfg=209
" hi Character guifg=#ec5f67 ctermfg=203
" hi Comment guifg=#65737e ctermfg=243 gui=NONE cterm=NONE
" hi Conditional guifg=#c594c5 ctermfg=176
" hi Constant guifg=#f99157 ctermfg=209
" hi Define guifg=#c594c5 ctermfg=176 gui=NONE cterm=NONE
" hi Delimiter guifg=#ab7967 ctermfg=137
" hi Float guifg=#f99157 ctermfg=209
" hi Function guifg=#6699cc ctermfg=68
" hi Identifier guifg=#ec5f67 ctermfg=203 gui=NONE cterm=NONE
" hi Include guifg=#6699cc ctermfg=68
" hi Keyword guifg=#c594c5 ctermfg=176
" hi Label guifg=#fac863 ctermfg=221
" hi Number guifg=#f99157 ctermfg=209
" hi Operator guifg=#c0c5ce ctermfg=251 gui=NONE cterm=NONE
" hi PreProc guifg=#fac863 ctermfg=221
" hi Repeat guifg=#fac863 ctermfg=221
" hi Special guifg=#62b3b2 ctermfg=73
" hi SpecialChar guifg=#ab7967 ctermfg=137
" hi Statement guifg=#ec5f67 ctermfg=203
" hi StorageClass guifg=#fac863 ctermfg=221
" hi String guifg=#99c794 ctermfg=114
" hi Structure guifg=#c594c5 ctermfg=176
" hi Tag guifg=#fac863 ctermfg=221
" hi Todo guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237
" hi Type guifg=#fac863 ctermfg=221 gui=NONE cterm=NONE
" hi Typedef guifg=#fac863 ctermfg=221
" hi SpellBad guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" hi SpellLocal guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" hi SpellCap guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" hi SpellRare guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" hi csClass guifg=#fac863 ctermfg=221
" hi csAttribute guifg=#fac863 ctermfg=221
" hi csModifier guifg=#c594c5 ctermfg=176
" hi csType guifg=#ec5f67 ctermfg=203
" hi csUnspecifiedStatement guifg=#6699cc ctermfg=68
" hi csContextualStatement guifg=#c594c5 ctermfg=176
" hi csNewDecleration guifg=#ec5f67 ctermfg=203
" hi cOperator guifg=#62b3b2 ctermfg=73
" hi cPreCondit guifg=#c594c5 ctermfg=176
" hi cssColor guifg=#62b3b2 ctermfg=73
" hi cssBraces guifg=#c0c5ce ctermfg=251
" hi cssClassName guifg=#c594c5 ctermfg=176
" hi DiffAdd guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237
" hi DiffChange guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" hi DiffDelete guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
" hi DiffText guifg=#6699cc ctermfg=68 guibg=#343d46 ctermbg=237
" hi DiffAdded guifg=#ffffff ctermfg=15 guibg=#99c794 ctermbg=114
" hi DiffFile guifg=#ec5f67 ctermfg=203 guibg=#1b2b34 ctermbg=235
" hi DiffNewFile guifg=#99c794 ctermfg=114 guibg=#1b2b34 ctermbg=235
" hi DiffLine guifg=#6699cc ctermfg=68 guibg=#1b2b34 ctermbg=235
" hi DiffRemoved guifg=#ffffff ctermfg=15 guibg=#ec5f67 ctermbg=203
" hi gitCommitOverflow guifg=#ec5f67 ctermfg=203
" hi gitCommitSummary guifg=#99c794 ctermfg=114
" hi htmlBold guifg=#fac863 ctermfg=221
" hi htmlItalic guifg=#c594c5 ctermfg=176
" hi htmlTag guifg=#62b3b2 ctermfg=73
" hi htmlEndTag guifg=#62b3b2 ctermfg=73
" hi htmlArg guifg=#fac863 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi htmlTagName guifg=#d8dee9 ctermfg=253
" hi javaScript guifg=#c0c5ce ctermfg=251
" hi javaScriptNumber guifg=#f99157 ctermfg=209
" hi javaScriptBraces guifg=#c0c5ce ctermfg=251
" hi markdownCode guifg=#99c794 ctermfg=114
" hi markdownCodeBlock guifg=#99c794 ctermfg=114
" hi markdownHeadingDelimiter guifg=#6699cc ctermfg=68
" hi markdownItalic guifg=#c594c5 ctermfg=176 gui=italic cterm=italic
" hi markdownBold guifg=#fac863 ctermfg=221 gui=bold cterm=bold
" hi markdownCodeDelimiter guifg=#ab7967 ctermfg=137 gui=italic cterm=italic
" hi markdownError guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
" hi NeomakeErrorSign guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
" hi NeomakeWarningSign guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237
" hi NeomakeInfoSign guifg=#ffffff ctermfg=15 guibg=#343d46 ctermbg=237
" hi NeomakeError guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl
" hi NeomakeWarning guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl
" hi NERDTreeExecFile guifg=#c0c5ce ctermfg=251
" hi NERDTreeDirSlash guifg=#6699cc ctermfg=68
" hi NERDTreeOpenable guifg=#c0c5ce ctermfg=251
" hi phpComparison guifg=#c0c5ce ctermfg=251
" hi phpParent guifg=#c0c5ce ctermfg=251
" hi phpMemberSelector guifg=#c0c5ce ctermfg=251
" hi pythonRepeat guifg=#c594c5 ctermfg=176
" hi pythonOperator guifg=#c594c5 ctermfg=176
" hi rubyConstant guifg=#fac863 ctermfg=221
" hi rubySymbol guifg=#99c794 ctermfg=114
" hi rubyAttribute guifg=#6699cc ctermfg=68
" hi rubyInterpolation guifg=#99c794 ctermfg=114
" hi rubyInterpolationDelimiter guifg=#ab7967 ctermfg=137
" hi rubyStringDelimiter guifg=#99c794 ctermfg=114
" hi rubyRegexp guifg=#62b3b2 ctermfg=73
" hi sassidChar guifg=#ec5f67 ctermfg=203
" hi sassClassChar guifg=#f99157 ctermfg=209
" hi sassInclude guifg=#c594c5 ctermfg=176
" hi sassMixing guifg=#c594c5 ctermfg=176
" hi sassMixinName guifg=#6699cc ctermfg=68
" hi vimfilerLeaf guifg=#c0c5ce ctermfg=251
" hi vimfilerNormalFile guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
" hi vimfilerOpenedFile guifg=#6699cc ctermfg=68
" hi vimfilerClosedFile guifg=#6699cc ctermfg=68
" hi GitGutterAdd guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237
" hi GitGutterChange guifg=#6699cc ctermfg=68 guibg=#343d46 ctermbg=237
" hi GitGutterDelete guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
" hi GitGutterChangeDelete guifg=#c594c5 ctermfg=176 guibg=#343d46 ctermbg=237
" hi xmlTag guifg=#62b3b2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi xmlTagName guifg=#c0c5ce ctermfg=251 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi xmlEndTag guifg=#62b3b2 ctermfg=73
