runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
syntax enable

filetype plugin indent on

" Intendation
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smarttab

" Colorscheme
if !has("gui_running")
  let g:gruvbox_italic=0
endif
set background=dark
set t_Co=256
colorscheme gruvbox
set cursorline

set scrolloff=3

set list listchars=tab:»·,trail:·

set mouse=a
set colorcolumn=80
set relativenumber
set ruler
set showcmd

" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader = ' '

map <leader><leader> :!
map <leader>rv :source ~/.vimrc<CR>

nmap <leader>s :%s/
vmap <leader>s :s/

" RSpec.vim mappings
map <leader>r :call RunCurrentSpecFile()<CR>
map <leader>r :call RunNearestSpec()<CR>
map <leader>e :call RunLastSpec()<CR>
map <leader>a :call RunAllSpecs()<CR>

" Minibuffexpl
map <leader>h :MBEbp<CR>
map <leader>l :MBEbn<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
" If NERDTree is the last window close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctrlP
let g:ctrlp_show_hidden = 1

" AutoClose
let g:AutoClosePairs = {'(': ')', '{ ': '}', '[': ']', '"': '"', "'": "'"}

