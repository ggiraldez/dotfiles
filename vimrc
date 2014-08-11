" Vim configuration file

set nocompatible

" Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#begin()

" Vundle itself
Plugin 'gmarik/vundle'

" General utility and navigation
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'

" Editing plugins
Plugin 'vim-scripts/paredit.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'

" Language support
Plugin 'tpope/vim-bundler'
Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rhysd/vim-crystal'
Plugin 'tpope/vim-fireplace'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jimenezrick/vimerl'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'


" Finished Vundle setup
call vundle#end()

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
set shiftwidth=2
set tabstop=2
set sts=2

" Other options
set hidden
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set shortmess=atI
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.class,*.pyc
set wildignore+=*/build/*
set autoread

" Other plugins
runtime! ftplugin/man.vim

" Filetypes
filetype on
filetype plugin indent on

" Appearence
if has("gui_running")
    set lines=50
    set columns=140
    set gfn=Droid\ Sans\ Mono:h15
    "set gfn=Menlo:h15
    let rdark_current_line = 1
    set background=dark
    colorscheme base16-tomorrow
    set cursorline
    set guioptions-=T
    set guioptions-=m
else
    set background=light
    colorscheme Tomorrow
    set cursorline
    " colorscheme solarized
endif

" Airline
if has("gui_running")
  set gfn=Droid\ Sans\ Mono\ for\ Powerline:h15
  let g:airline_powerline_fonts = 1
endif
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Ctrl-P
let g:ctrlp_max_height = 20

" Erlang plugins
let g:erl_author="Gustavo Giráldez"
let g:erl_company="Manas"
let g:erl_replace_buffer=1
" let g:erl_tpl_dir="~/.vim/templates/erlang"

" Shortcuts
let mapleader = ","
let maplocalleader = "\\"
nmap <silent> <leader>h :silent :nohlsearch<CR>
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>w :set wrap!<CR>

nmap <leader>f :CtrlPCurWD<CR>
nmap <leader>F :CtrlPCur<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>r :CtrlPMRU<CR>

nmap <leader>n :NERDTreeToggle<CR>

nmap <leader>( :RainbowParenthesesToggleAll<CR>

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
au FileType go setl noet sw=8 ts=8 sts=8
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead [Cc]apfile set filetype=ruby
au BufNewFile,BufRead *.gradle setf groovy
" au BufNewFile,BufRead *.cr setf ruby
au BufNewFile,BufRead *.axlsx setf ruby
au BufNewFile,BufRead *.html.hbs setf html
au BufNewFile,BufRead *.go setf go

" Rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

