" " Basic setup
setlocal textwidth=0
" setlocal foldlevel=5
" setlocal background=light " does not work properly
" set foldtext=MyFoldText()

" Chapter, part, section, subsection and titles.
syn match texContent  '\\\%(chapter\>\|part\|section\>\|subsection\>\|subsubsection\)' containedin=ALLBUT,texComment nextgroup=texContentNames
syn region texContentNames matchgroup=Delimiter start="{" end="}" contained
" hi! link texContentNames GruvboxFg0
hi link texContentNames todo
hi! link texContent GruvboxAquaBold

" \begin \end colors
" syn region texBeginingCommand start='\\begin\>\|\\end\>' end="}" containedin=ALLBUT,texComment
" syn region texBegName matchgroup=texBeginingCommand start='\\begin{\|\\end{' end="}"
" hi! link texBeginingCommand GruvboxRedBold
" hi! link texBegName GruvboxBlueBold

" " Curlies
" syn match texCurlies "{\|}" containedin=texSection

" Gruvbox colors
hi! link texDocType GruvboxRed " documentclass
hi! link texDocTypeArgs GruvboxYellow "docclass args
" hi! link texInputFile GruvboxBlue " packages, graphs
" hi! link texBeginEnd GruvboxBlue " begin, end
" hi! link texPreamble GruvboxYellowBold " nothing
hi! link texSection GruvboxRed " title, author
hi! link texTitle GruvboxBlue "inside title, author
hi! link texAbstract GruvboxBlue "inside abtsract " does not work cos changes
" hi! link texSectionZone GruvboxRedBold "inside abtsract
" hi! link texParaZone GruvboxBlueBold "inside abtsract
" hi! link texZone GruvboxBlueBold "inside abtsract
hi! link texStatement GruvboxAqua " most commasnd
hi! link texRefZone GruvboxGreenBold " references
hi! link texBeginEnd GruvboxBlueBold " begin, end, envir
hi! link texBeginEndName GruvboxBlueBold " envir name
hi! link texBeginEndModifier GruvboxBlueBold " envir name
hi! link texMath GruvboxBlue
hi! link texMathOper GruvboxBlue " =
" hi! link texMathDelim GruvboxPurple " nothing
hi! link texMathText GruvboxGreen
" hi! link texMathSymbol GruvboxBlue
hi! link texMathMatcher GruvboxYellow" (1-\tau)
hi! link texSuperscript GruvboxRed
hi! link texSubscript GruvboxPurple
" hi! link texSpecialChar GruvboxYellow " \\
hi! link texGreek GruvboxYellow
" hi! link Special GruvboxBlue
hi! link texInputFile GruvboxBlueBold
hi! link texInputFileOpt GruvboxFg1
hi! link texDelimiter Special " {}
hi! link texTypeSize GruvboxYellow
hi! link texString GruvboGray
" TexFold syn region texTitle			matchgroup=texSection start='\\\%(author\|title\)\>\s*{' end='}'													contains=@texFoldGroup,@Spell
" hi! link texSectionZone GruvboxRed
" syn match plop "[a-z]" containedin=texSectionZone
" hi! link plop GruvboxRed

"
" " Define the default highlighting.
" " hi Boolean guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Error guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Comment guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Todo guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Number guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Conditional guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Constant guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Delimiter guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi SpecialChar guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Float guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Function guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Identifier guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi PreProc guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi PreCondit guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Normal guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Operator guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Repeat guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi String guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Type guifg=#ec5f67 ctermfg=203 " unicode characters
" " hi Statment guifg=#65737e ctermfg=203 " unicode characters
" " hi! link rStatement GruvboxGreen
" " Statement
" " Boolean
" " Error
" " Comment
" " Todo
" " Number
" " Conditional
" " Constant
" " Delimiter
" " SpecialChar
" " Float
" " Function
" " Identifier
" " PreProc
" " PreCondit
" " Normal
" " Operator
" " Repeat
" " String
" " Type
" "
" "
" " hi Number guifg=#f99157 ctermfg=209
" " hi ModeMsg guifg=#99c794 ctermfg=114 " visual and buffer
" " hi Normal guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235 " basic color
" " hi LineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" " hi StatusLine guifg=#a7adba ctermfg=145 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE " tmux
" " hi StatusLineNC guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE "vm
" " hi Constant guifg=#f99157 ctermfg=209
" " hi Conditional guifg=#c594c5 ctermfg=176
" " hi String guifg=#99c794 ctermfg=114
" "
" " hi Bold gui=bold cterm=bold
" " hi Debug guifg=#ec5f67 ctermfg=203
" " hi Directory guifg=#6699cc ctermfg=68
" " hi ErrorMsg guifg=#ec5f67 ctermfg=203 guibg=#1b2b34 ctermbg=235
" " hi Exception guifg=#ec5f67 ctermfg=203
" " hi FoldColumn guibg=#343d46 ctermbg=237
" " hi Folded guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" " hi IncSearch guifg=#343d46 ctermfg=237 guibg=#f99157 ctermbg=209
" " hi Italic gui=underline cterm=underline
" " hi Macro guifg=#ec5f67 ctermfg=203
" " hi MatchParen guifg=#c0c5ce ctermfg=251 guibg=#65737e ctermbg=243
" " hi ModeMsg guifg=#99c794 ctermfg=114
" " hi MoreMsg guifg=#99c794 ctermfg=114
" " hi Question guifg=#6699cc ctermfg=68
" " hi Search guifg=#65737e ctermfg=243 guibg=#fac863 ctermbg=221
" " hi SpecialKey guifg=#65737e ctermfg=243
" " hi TooLong guifg=#ec5f67 ctermfg=203
" " hi Underlined guifg=#ec5f67 ctermfg=203
" " hi Visual guibg=#4f5b66 ctermbg=240
" " hi VisualNOS guifg=#ec5f67 ctermfg=203
" " hi WarningMsg guifg=#ec5f67 ctermfg=203
" " hi WildMenu guifg=#ffffff ctermfg=15 guibg=#6699cc ctermbg=68
" " hi Title guifg=#6699cc ctermfg=68 gui=NONE cterm=NONE
" " hi Conceal guifg=#6699cc ctermfg=68 guibg=#1b2b34 ctermbg=235
" " hi Cursor guifg=#1b2b34 ctermfg=235 guibg=#c0c5ce ctermbg=251
" " hi NonText guifg=#65737e ctermfg=243
" " hi Normal guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
" " hi LineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" " hi CursorLineNR guifg=#ffffff ctermfg=15 guibg=#ffffff ctermbg=15
" " hi SignColumn guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" " hi StatusLine guifg=#a7adba ctermfg=145 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE
" " hi StatusLineNC guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi VertSplit guifg=#4f5b66 ctermfg=240 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE
" " hi ColorColumn guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi CursorColumn guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi CursorLine guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi CursorLineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" " hi PMenu guifg=#a7adba ctermfg=145 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi PMenuSel guifg=#343d46 ctermfg=237 guibg=#a7adba ctermbg=145
" " hi PmenuSbar guibg=#4f5b66 ctermbg=240
" " hi PmenuThumb guibg=#d8dee9 ctermbg=253
" " hi TabLine guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi TabLineFill guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi TabLineSel guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
" " hi Boolean guifg=#f99157 ctermfg=209
" " hi Character guifg=#ec5f67 ctermfg=203
" " hi Comment guifg=#65737e ctermfg=243 gui=NONE cterm=NONE
" " hi Conditional guifg=#c594c5 ctermfg=176
" " hi Constant guifg=#f99157 ctermfg=209
" " hi Define guifg=#c594c5 ctermfg=176 gui=NONE cterm=NONE
" " hi Delimiter guifg=#ab7967 ctermfg=137
" " hi Float guifg=#f99157 ctermfg=209
" " hi Function guifg=#6699cc ctermfg=68
" " hi Identifier guifg=#ec5f67 ctermfg=203 gui=NONE cterm=NONE
" " hi Include guifg=#6699cc ctermfg=68
" " hi Keyword guifg=#c594c5 ctermfg=176
" " hi Label guifg=#fac863 ctermfg=221
" " hi Number guifg=#f99157 ctermfg=209
" " hi Operator guifg=#c0c5ce ctermfg=251 gui=NONE cterm=NONE
" " hi PreProc guifg=#fac863 ctermfg=221
" " hi Repeat guifg=#fac863 ctermfg=221
" " hi Special guifg=#62b3b2 ctermfg=73
" " hi SpecialChar guifg=#ab7967 ctermfg=137
" " hi Statement guifg=#ec5f67 ctermfg=203
" " hi StorageClass guifg=#fac863 ctermfg=221
" " hi String guifg=#99c794 ctermfg=114
" " hi Structure guifg=#c594c5 ctermfg=176
" " hi Tag guifg=#fac863 ctermfg=221
" " hi Todo guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237
" " hi Type guifg=#fac863 ctermfg=221 gui=NONE cterm=NONE
" " hi Typedef guifg=#fac863 ctermfg=221
" " hi SpellBad guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" " hi SpellLocal guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" " hi SpellCap guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" " hi SpellRare guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
" " hi csClass guifg=#fac863 ctermfg=221
" " hi csAttribute guifg=#fac863 ctermfg=221
" " hi csModifier guifg=#c594c5 ctermfg=176
" " hi csType guifg=#ec5f67 ctermfg=203
" " hi csUnspecifiedStatement guifg=#6699cc ctermfg=68
" " hi csContextualStatement guifg=#c594c5 ctermfg=176
" " hi csNewDecleration guifg=#ec5f67 ctermfg=203
" " hi cOperator guifg=#62b3b2 ctermfg=73
" " hi cPreCondit guifg=#c594c5 ctermfg=176
" " hi cssColor guifg=#62b3b2 ctermfg=73
" " hi cssBraces guifg=#c0c5ce ctermfg=251
" " hi cssClassName guifg=#c594c5 ctermfg=176
" " hi DiffAdd guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237
" " hi DiffChange guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
" " hi DiffDelete guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
" " hi DiffText guifg=#6699cc ctermfg=68 guibg=#343d46 ctermbg=237
" " hi DiffAdded guifg=#ffffff ctermfg=15 guibg=#99c794 ctermbg=114
" " hi DiffFile guifg=#ec5f67 ctermfg=203 guibg=#1b2b34 ctermbg=235
" " hi DiffNewFile guifg=#99c794 ctermfg=114 guibg=#1b2b34 ctermbg=235
" " hi DiffLine guifg=#6699cc ctermfg=68 guibg=#1b2b34 ctermbg=235
" " hi DiffRemoved guifg=#ffffff ctermfg=15 guibg=#ec5f67 ctermbg=203
" " hi gitCommitOverflow guifg=#ec5f67 ctermfg=203
" " hi gitCommitSummary guifg=#99c794 ctermfg=114
" " hi htmlBold guifg=#fac863 ctermfg=221
" " hi htmlItalic guifg=#c594c5 ctermfg=176
" " hi htmlTag guifg=#62b3b2 ctermfg=73
" " hi htmlEndTag guifg=#62b3b2 ctermfg=73
" " hi htmlArg guifg=#fac863 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" " hi htmlTagName guifg=#d8dee9 ctermfg=253
" " hi javaScript guifg=#c0c5ce ctermfg=251
" " hi javaScriptNumber guifg=#f99157 ctermfg=209
" " hi javaScriptBraces guifg=#c0c5ce ctermfg=251
" " hi markdownCode guifg=#99c794 ctermfg=114
" " hi markdownCodeBlock guifg=#99c794 ctermfg=114
" " hi markdownHeadingDelimiter guifg=#6699cc ctermfg=68
" " hi markdownItalic guifg=#c594c5 ctermfg=176 gui=italic cterm=italic
" " hi markdownBold guifg=#fac863 ctermfg=221 gui=bold cterm=bold
" " hi markdownCodeDelimiter guifg=#ab7967 ctermfg=137 gui=italic cterm=italic
" " hi markdownError guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
" " hi NeomakeErrorSign guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
" " hi NeomakeWarningSign guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237
" " hi NeomakeInfoSign guifg=#ffffff ctermfg=15 guibg=#343d46 ctermbg=237
" " hi NeomakeError guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl
" " hi NeomakeWarning guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl
" " hi NERDTreeExecFile guifg=#c0c5ce ctermfg=251
" " hi NERDTreeDirSlash guifg=#6699cc ctermfg=68
" " hi NERDTreeOpenable guifg=#c0c5ce ctermfg=251
" " hi phpComparison guifg=#c0c5ce ctermfg=251
" " hi phpParent guifg=#c0c5ce ctermfg=251
" " hi phpMemberSelector guifg=#c0c5ce ctermfg=251
" " hi pythonRepeat guifg=#c594c5 ctermfg=176
" " hi pythonOperator guifg=#c594c5 ctermfg=176
" " hi rubyConstant guifg=#fac863 ctermfg=221
" " hi rubySymbol guifg=#99c794 ctermfg=114
" " hi rubyAttribute guifg=#6699cc ctermfg=68
" " hi rubyInterpolation guifg=#99c794 ctermfg=114
" " hi rubyInterpolationDelimiter guifg=#ab7967 ctermfg=137
" " hi rubyStringDelimiter guifg=#99c794 ctermfg=114
" " hi rubyRegexp guifg=#62b3b2 ctermfg=73
" " hi sassidChar guifg=#ec5f67 ctermfg=203
" " hi sassClassChar guifg=#f99157 ctermfg=209
" " hi sassInclude guifg=#c594c5 ctermfg=176
" " hi sassMixing guifg=#c594c5 ctermfg=176
" " hi sassMixinName guifg=#6699cc ctermfg=68
" " hi vimfilerLeaf guifg=#c0c5ce ctermfg=251
" " hi vimfilerNormalFile guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
" " hi vimfilerOpenedFile guifg=#6699cc ctermfg=68
" " hi vimfilerClosedFile guifg=#6699cc ctermfg=68
" " hi GitGutterAdd guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237
" " hi GitGutterChange guifg=#6699cc ctermfg=68 guibg=#343d46 ctermbg=237
" " hi GitGutterDelete guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
" " hi GitGutterChangeDelete guifg=#c594c5 ctermfg=176 guibg=#343d46 ctermbg=237
" " hi xmlTag guifg=#62b3b2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" " hi xmlTagName guifg=#c0c5ce ctermfg=251 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" " hi xmlEndTag guifg=#62b3b2 ctermfg=73
