execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

"set backup
"set backupdir=/usr/share/vim/backup
"set backupskip=/usr/share/vim/backup/*
"set directory=/usr/share/vim/backup
"set writebackup

:let mapleader = ","

set tags=tags;/

set nu!
set number
set scrolloff=10
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set linebreak
"set lines=40 columns=120
"set gfn=Courier_New:h12:cANSI
"set gfn=Consolas:h9:cANSI
"set gfn=Consolas:h11
"set guifont=Monospace\ 12
set guifont=Inconsolata\ Medium\ 14
if has("gui_running")
    colorscheme solarized
else
    colorscheme solarized
endif
set t_Co=16
"set t_Co=256
"let g:solarized_termcolors=256
set showmatch
set nohlsearch
set autochdir
set nowrap
set background=dark
set nobk
set autoindent

set diffopt+=iwhite

abbr teh the
abbr hte the

set cm=blowfish
autocmd BufReadPost * if &key != "" | set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure | endif 

au BufNewFile,BufRead *.gradle setf groovy
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

"map <F2> o{<CR>}<Esc>O
map <F2> A<Space>{<Esc>o}<Esc>O
map <F3> i/*<Esc>80a-<Esc>o<BackSpace><BackSpace><Tab>Function<Tab>:<CR><BackSpace><Tab>Description<Tab>:<CR><BackSpace><Tab>Inputs<Tab><Tab>:<CR><BackSpace><Tab>Outputs<Tab><Tab>:<CR><BackSpace><Tab>Return<Tab><Tab>:<CR><BackSpace><Esc>80i-<Esc>a*/<Esc>
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

"set undodir=/usr/share/vim/undodir
"set undofile
"set undolevels=1000 "maximum number of changes that can be undone
"set undoreload=10000 "maximum number of lines to save for undo on buffer reload
