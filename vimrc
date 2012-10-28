set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'
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
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-abolish'
Bundle 'scrooloose/syntastic'
Bundle 'ZoomWin'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jQuery'
Bundle 'skalnik/vim-vroom'

filetype plugin indent on

syntax on

if has("gui_running")
  set t_Co=256
  colorscheme molokai
  set guitablabel=%M%t
  set lines=59
  set columns=239
  set guifont=Menlo:h14
  set transparency=7
else
  if $TERM == 'xterm'
    set term=xterm-256color
    colorscheme molokai
  else
    colorscheme vividchalk
  endif
endif

set guioptions-=T
set guioptions-=L
set guioptions-=r
set mouse=a
set ttymouse=xterm2
set hidden
set ic
set smartcase

set vb
set noswapfile
set smartindent
set tabstop=2
set shiftwidth=2
set sts=2
set expandtab ts=2 sw=2 ai
set backspace=indent,eol,start

set history=1000

set showcmd
set showmode

set incsearch
set hlsearch

set number
set showbreak=...
set wrap linebreak nolist

set statusline=%f
set statusline+=%{fugitive#statusline()}
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}
set statusline+=%=
set statusline+=%c,
set statusline+=%l/%L
set statusline+=\ %P
set laststatus=2

set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set nofoldenable

filetype plugin on
filetype indent on

" gist-vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1
" syntastic
let g:syntastic_enable_signs=1

" Bindings
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <Leader>b :BufExplorer<CR>

" Russian
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

highlight lCursor guifg=NONE guibg=Cyan
