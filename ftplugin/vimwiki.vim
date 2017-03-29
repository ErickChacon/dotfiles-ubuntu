" function! s:expand_snippet_or_key(key) abort
"   let g:ulti_expand_or_jump_res = 0
"   let snippet = UltiSnips#ExpandSnippetOrJump()
"   return snippet
"   " return (g:ulti_expand_or_jump_res > 0) ? snippet : a:key
" endfunction
setlocal spell
" inoremap <silent> <expr> <TAB> pumvisible() ? "\<C-n>" : "<C-R>=<SID>expand_snippet_or_key(\"\t\")<CR>"
" inoremap <silent><buffer> <expr><s-tab> pumvisible() ? deoplete#close_popup() : "<CR>"
" inoremap <silent><buffer> <expr>j pumvisible() ? deoplete#close_popup() : "<CR>"
" inoremap <silent><buffer> <expr><Right> pumvisible() ? deoplete#close_popup() : "<CR>"
inoremap <silent> <expr>jj pumvisible() ? "<C-y><C-R>=UltiSnips#ExpandSnippet()<CR>" : "\<CR>"

