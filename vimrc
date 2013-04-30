" Vim configuration file

set nocompatible

call pathogen#infect()
call pathogen#helptags()

" Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

" View options
set scrolloff=3
set ruler
syntax on
set number
set listchars=tab:>-,trail:·,eol:¬
set foldenable
set foldmethod=manual
set nolazyredraw

" Editing options
set backspace=indent,eol,start
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set sts=4

" Other options
set hidden
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set shortmess=atI
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.class,*.pyc
set wildignore+=*/build/*

" Filetypes
filetype on
filetype plugin indent on

" Appearence
if has("gui_running")
    " set gfn=Droid\ Sans\ Mono\ 9
    set gfn=Ubuntu\ Mono\ 12
    let g:dwm_master_pane_width=85
    " set background=light
    " colorscheme oceandeep
    " colorscheme desert
    " colorscheme railscasts
    " colorscheme solarized
    let rdark_current_line = 1
    colorscheme rdark
    set cursorline
    set guioptions-=T
    set guioptions-=m
else
    set background=light
    colorscheme default
    set cursorline
    " colorscheme solarized
endif

" ZenCoding
let g:user_zen_settings = {
            \  'indentation': '  '
            \}

let g:snips_author = 'Gustavo Giráldez'

" MiniBufferExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Shortcuts
let mapleader = ","
let maplocalleader = "\\"
nmap <silent> <leader>h :silent :nohlsearch<CR>
nmap <silent> <leader>s :set nolist!<CR>

nmap <leader>f :CtrlP<CR>
nmap <leader>F :CtrlPCurWD<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>r :CtrlPMRU<CR>

nmap <leader>n :NERDTreeToggle<CR>

nmap <C-PageUp> :bprev<CR>
nmap <C-PageDown> :bnext<CR>
nmap <F3> :cn<CR>
nmap <S-F3> :cp<CR>

" Open line above and below in insert mode
imap <M-o> <ESC>o
imap <C-Enter> <ESC>o
imap <C-o> <ESC>O

" File types configurations
au BufNewFile,BufRead *.{gsp,html} setl sw=2 sts=2 ts=2
au FileType ruby setl sw=2 sts=2 ts=2
au FileType yaml setl sw=2 sts=2 ts=2
au FileType lua setl sw=2 sts=2 ts=2
au FileType sass setl sw=2 sts=2 ts=2
au FileType coffee setl sw=2 sts=2 ts=2
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead [Cc]apfile set filetype=ruby

" Rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

