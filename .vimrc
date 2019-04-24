if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

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

nmap <C-n> :NERDTreeToggle<CR>

