" testitexn"
" Neovim settings
" Language:	Vim
" Last Change:	22 Jun 2017
"
" PLUGINS {{{
call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'ajh17/Spacegray.vim'
Plug 'icymind/NeoSolarized'
Plug 'mhartington/oceanic-next'
Plug 'KeitaNakamura/neodark.vim'
Plug 'arcticicestudio/nord-vim'
" Plug 'MaxSt/FlatColor'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'joshdick/onedark.vim'
Plug 'nightsense/vim-crunchbang'
Plug 'exitface/synthwave.vim'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'dracula/vim'
Plug 'mhinz/vim-janah'
Plug 'jdsimcoe/abstract.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'zacanger/angr.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'w0ng/vim-hybrid'
Plug 'nanotech/jellybeans.vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'rakr/vim-one'
Plug 'liuchengxu/space-vim-dark'
Plug 'jacoborus/tender.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'roosta/srcery'
Plug 'nightsense/stellarized'
Plug 'ajmwagar/vim-deus'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Explore folder and documents
Plug 'ctrlpvim/ctrlp.vim' " find files
Plug 'scrooloose/nerdtree' " explore your filesystem and to open files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " fuzzy matching

" Development environment tools
" Plug 'epeli/slimux' " not using with r but maybe with python
" Plug 'kassio/neoterm' " use terminal
Plug 'jalvesaq/vimcmdline' " command line
Plug 'hkupty/iron.nvim' " Interactive Repls Over Neovim
Plug 'SirVer/ultisnips' " snippets
Plug 'honza/vim-snippets' " snippets scripts
" Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " completion
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

if !exists("g:gui_oni")
  " Plug 'vim-airline/vim-airline' " status and tab lines
  " Plug 'vim-airline/vim-airline-themes'
endif
Plug 'itchyny/lightline.vim' " status and tab lines
Plug 'ryanoasis/vim-devicons' " filetype icons
Plug 'kshenoy/vim-signature' " display marks
Plug 'majutsushi/tagbar' " display tags
Plug 'ap/vim-css-color'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'edkolev/tmuxline.vim'
" Plug 'weihanglo/tmuxline.vim'
Plug 'CPWeaver/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

" Programs
Plug 'vimwiki/vimwiki' " vimwiki: notes and agenda
Plug 'lervag/vimtex' " latex
" Plug 'vim-pandoc/vim-pandoc-syntax' " markdown: great works with nvim-r
Plug 'ErickChacon/vim-pandoc-syntax' " markdown: great works with nvim-r
Plug 'vim-pandoc/vim-pandoc' " markdown: really nice for markdown
function! BuildComposer(info) " markdown preview
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
  endif
endfunction
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
Plug 'cespare/vim-toml' " toml: syntax highlight
Plug 'jalvesaq/Nvim-R' " R: run code, rmarkdown, help and more
Plug 'tpope/vim-fugitive' " git: wrapper
Plug 'airblade/vim-gitgutter' " git: shows added and remove lines of git
Plug 'mhinz/vim-signify'
" Plug 'ivanov/vim-ipython' " Python: two-way integration with ipython
" Plug 'bfredl/nvim-ipy' " Python: jupyter front-end for neovim
" Plug 'zchee/deoplete-jedi' " Python: autocomplete
Plug 'vim-python/python-syntax' " Python: syntax highlighting
" Plug 'coyotebush/vim-pweave'
" Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'JuliaEditorSupport/julia-vim'
" Plug 'JuliaEditorSupport/deoplete-julia' " initialize problem
" Plug 'mattpenney89/vimify' " Spotify
" Plug 'HendrikPetertje/vimify' " Spotify

" Motions
Plug 'tpope/vim-surround' " sorround
Plug 'kana/vim-textobj-indent' " copy indented block
Plug 'kana/vim-textobj-user' " custom text object
" Plug 'tpope/vim-commentary' " easy comment and uncomment: slow for rmd
Plug 'tomtom/tcomment_vim' " easy comment: nice for rmd
" Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'

call plug#end()
" }}}
" GENERAL SETTING {{{

" syntax enable
" let mapleader = " " " Leader - ( Spacebar ) \ by default
let maplocalleader = "\\"
set backspace=2 " Backspace deletes like most programs in insert mode
set nobackup " avoid create backup automatically
set nowritebackup " save: avoid new-delete-rename
set history=50 " history of the last commands
set ruler " row and column position
set encoding=utf-8 " Necessary to show Unicode glyphs
set autowrite     " Automatically :write before running commands
set autoread      " Reload files changed outside vim
au FocusGained,BufEnter * :silent! " Check if file has changed externally
set showmatch " Show matching brackets just for a moment.
set title " window title

if exists("g:gui_oni")
  " Turn off statusbar, because it is externalized
  set noruler
  set laststatus=0 " 2: Always display the status line
  set noshowcmd
  set noshowmode " hide the default status mode
else
  set laststatus=2 " 2: Always display the status line
endif

set number " show line number
set numberwidth=4
set relativenumber

set hlsearch "highlight searches
set incsearch    " search as characters are entered
set ignorecase    " case insensitive searching (unless specified)
set smartcase
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching

set shiftwidth=2
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
" set showcmd         " show incomplete command in bottom bar
set cursorline      " highlight current line
set visualbell      " stop the annoying beeping
filetype indent on  " load filetype-specific indent files R,
filetype plugin on " for markdown preview
set wildmenu        " nice visual autocomplete for command menu
set wildmode=list:longest,full " full menu
set lazyredraw          " redraw only when we need to.
" set showmatch           " highlight matching [{()}]
set clipboard=unnamedplus " copy to clipboard

"Allow usage of mouse in iTerm
set ttyfast
set mouse=a

" Make it obvious where 100 characters is
set textwidth=85
set formatoptions=cqt " it changes depending of the filetype
" set wrapmargin=0
" set formatoptions=cq
" set formatoptions=qrn1
" set wrapmargin=0
set colorcolumn=+1
" let &colorcolumn="10,".join(range(70,999),",")
let &colorcolumn="".join(range(91,999),",")
" let &colorcolumn=range(86,999)
" highlight ColorColumn ctermbg=0 guibg=lightgrey
" augroup vimrc_autocmds
"   autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"   autocmd BufEnter * match OverLength /\%50v.*/
" augroup END
" Highlight long lines (>80)
" }}}
" ADDITIONAL NVIM SETTING {{{
" to get out of terminal insert mode
tnoremap jk <C-\><C-n>

" Go to the last cursor location when a file is opened, unless this is a
" git commit (in which case it's annoying)
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
      \ execute("normal `\"") |
  \ endif


ino " ""<left>
autocmd FileType r,python inoremap ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
autocmd FileType tex,pandoc inoremap $ $$<left>
ino {<CR> {<CR>}<ESC>O


" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>

" Mapping esc to jk and disable the old key
inoremap jk <Esc>
inoremap <esc> <nop>

vnoremap jk <Esc>
" vnoremap jk <Esc>gV
" inoremap jk <Esc>
" inoremap <esc> <nop>

" Use ctrl-[hjkl] to select the active split!
" nmap <silent> <c-k> :wincmd k<CR>
" nmap <silent> <c-j> :wincmd j<CR>
" nmap <silent> <c-h> :wincmd h<CR>
" nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> gk :wincmd k<CR>
nmap <silent> gj :wincmd j<CR>
nmap <silent> gh :wincmd h<CR>
nmap <silent> gl :wincmd l<CR>

" Forcing vimdiff to wrap lines
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

" }}}
