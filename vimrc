set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'bufexplorer.zip'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'ZoomWin'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

filetype plugin indent on

set t_Co=256
colorscheme molokai
set guitablabel=%M%t
set lines=40
set columns=115
set guifont=Menlo:h14
set transparency=7
set guioptions-=T
set guioptions-=L
set guioptions-=r

set noswapfile
set smartindent
set tabstop=2
set shiftwidth=2
set sts=2
set expandtab ts=2 sw=2 ai

set nofoldenable

" gist-vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1

" Bindings
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <Leader>b :BufExplorer<CR>

