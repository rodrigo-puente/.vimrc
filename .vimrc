execute pathogen#infect() 
let mapleader = "," "changed default leader '\'

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

map <C-n> :NERDTreeToggle<CR>
