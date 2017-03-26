setlocal spell
setlocal foldmethod=syntax
setlocal foldlevel=0
UltiSnipsAddFiletypes r
UltiSnipsAddFiletypes markdown
map <C-c>r :exe "SlimuxShellRun library(knitr); knit('" . expand("%:p") . "')"<CR>
inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 

" to recognize equations in any filetype
call textobj#user#plugin('equation', {
\  'dollar-math-a': {
\     '*pattern*': '[$][^$]*[$]',
\     'select': 'a$',
\ },
\  'dollar-math-i': {
\     '*pattern*': '[$]\zs[^$]*\ze[$]',
\     'select': 'i$',
\ },
\ })
