" Don't try to be vi compatible
set nocompatible
set nowrap
set encoding=utf8
" ???
filetype off

" Turn on syntax highlighting
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
" Plugin 'w0rp/ale'

" Javascript
" Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'leshill/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'moll/vim-node'

" HTML
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'digitaltoad/vim-pug'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""
" Configuration Section
""""""""""""""""""""""""""""
" Show linenumber
set number
set ruler

set tabstop=4
set shiftwidth=4

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

set visualbell " don't beep
set noerrorbells " don't beep
set nobackup
set noswapfile

set history=1000 " remember more commands and search history
set undolevels=1000 " use many levels of undo

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

".jsx to .js
let g:jsx_ext_required = 0

" Key Map
nmap <F8> :TagbarToggle<CR>

" disable arrows
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Linter configuration
" let g:ale_linters = {
" \ 'javascript': ['eslint'],
" \}
