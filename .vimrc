"Auto install of vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Auto install my dependencies:
"Nerdtree & Fuzzysearch atm
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/scrooloose/nerdtree' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
call plug#end()

let mapleader = ","
nmap <leader>w :w!<cr> "Fast save

syntax on

set smarttab "be smart on tabs
set tabstop=2 "set indent size
set shiftwidth=2
set autoindent
set smartindent

set nu "show line numbers
set ruler "always show current position
set ignorecase "ignore case when searching
set smartcase "try to be smart about cases
set incsearch "search as characters are entered
set hlsearch "highlight search results
set showmatch "show matching bracket when cursor is on

"Hybrid number here, reference: https://jeffkreeftmeijer.com/vim-number/
set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

map <C-n> :NERDTreeToggle<CR> "map nerdtree toggle to ctrl + n
