" PROGRAMS: PYTHON IRON.NVIM {{{
nmap <localleader>rf :IronRepl<cr>
nmap <localleader>ll :call IronSend(getline('.'))<cr>
nmap <localleader>rp :call IronSend(expand("<cword>"))<cr>
nmap <localleader>rh :call IronSend("?".expand("<cword>"))<cr>
" vmap <localleader>rh :call IronSend("?".expand("<cword>"))<cr>
nmap <localleader>pp <Plug>(iron-send-motion)ap
vmap <localleader>ss <Plug>(iron-send-motion)
nmap <localleader>bb ]'<Plug>(iron-send-motion)['
nmap <localleader>aa gg<Plug>(iron-send-motion)G
nmap <localleader>r <Plug>(iron-send-motion)
" }}}
