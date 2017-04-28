set nocompatible
set backspace=indent,eol,start
filetype off

"execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'editorconfig/editorconfig-vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'pangloss/vim-javascript'
call vundle#end()

filetype plugin indent on
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

"set backup
"set backupdir=/usr/share/vim/backup
"set backupskip=/usr/share/vim/backup/*
"set directory=/usr/share/vim/backup
"set writebackup

:let mapleader = ","
"map <Leader> <Plug>(easymotion-prefix)

set tags=tags;/

set nu!
set number
set scrolloff=10
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
set expandtab
set autoindent
set fileformat=unix
set linebreak
set showmatch
set nohlsearch
set autochdir
set nowrap
set background=dark
set nobk
set diffopt+=iwhite
set encoding=utf-8

au BufNewFile,BufRead *.jas, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"au BufNewFile,BufRead *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+S/

"YouCompleteMe config
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/local/bin/python3'
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'notificationSystem' in os.environ:
  project_base_dir = os.environ['notificationSystem']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

"set lines=40 columns=120
"set gfn=Courier_New:h12:cANSI
"set gfn=Consolas:h9:cANSI
"set gfn=Consolas:h11
"set guifont=Monospace\ 12
"set guifont=Inconsolata\ Medium\ 14
if has("gui_running")
    colorscheme solarized
else
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    colorscheme solarized
endif
"set t_Co=16
set t_Co=256
"let g:solarized_termcolors=256
abbr teh the
abbr hte the

set cm=blowfish
autocmd BufReadPost * if &key != "" | set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure | endif 

au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.g set filetype=antlr3
au BufNewFile,BufRead *.g4 set filetype=antlr4
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

"map <F2> o{<CR>}<Esc>O
map <F2> A<Space>{<Esc>o}<Esc>O
map <F3> A<Space>{<Esc>o});<Esc>O
map <F4> i/*<Esc>80a-<Esc>o<BackSpace><BackSpace><Tab>Class<Tab><Tab>:<CR><BackSpace><Tab>Description<Tab>:<CR><BackSpace><Tab>Parents<Tab><Tab>:<CR><BackSpace><Tab>Children<Tab>:<CR><BackSpace><Tab>Friends<Tab><Tab>:<CR><BackSpace><Esc>80i-<Esc>a*/<Esc>
map <F5> :CommandTFlush<CR>
map <F6> :%!python -m json.tool<CR>
map <F7> :%!xmllint --format --recover -<CR>
nmap <F8> :TagbarToggle<CR>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

if has("autocmd")
  filetype indent on
endif

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number of lines to save for undo on buffer reload

set clipboard=unnamed
