" Common options
set nocompatible
filetype on

set number
set cursorline
set smarttab
set wildmenu wildoptions=pum
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch
set history=1000
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Plug-vim install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'w0rp/ale'
Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'Chiel92/vim-autoformat'
Plug 'lifepillar/vim-mucomplete'
call plug#end()

" Light line plugin
set laststatus=2
set noshowmode

let g:lightline = { 'colorscheme': 'one' }

"Colorscheme
colorscheme onedark

" Some stuff
syntax on
filetype plugin on
filetype indent on

"Ale Plugin
set omnifunc=ale#completion#OmniFunc
set completeopt+=menuone
set completeopt+=noselect

"mu-complete
let g:mucomplete#enable_auto_at_startup = 1

"vimtex
let g:vimtex_compiler_latexmk = {
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-xelatex',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}

let g:vimtex_compiler_latexmk_engines = {
            \ '_'                : '-xelatex',
            \}


"My mapping
inoremap <F12> <ESC>:w<CR>i


