" setlocal foldmethod=marker
setlocal foldlevel=0
" setlocal conceallevel=0

setlocal spell
map <C-c>r :exe "SlimuxShellRun source('" . expand("%:p") . "')"<CR>
inoremap <buffer> >> <Esc>:normal! a%>%<CR>a 
inoremap <leader>, <C-x><C-o>
" inoremap <Nul> <C-x><C-o>
imap <C-space> <Plug>RCompleteArgs
