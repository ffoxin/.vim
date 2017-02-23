filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set colorcolumn=120
set number

" reload config
map <leader>s :source ~/.vimrc<CR>

" history
set hidden
set history=100

" indentation
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" highlight search
set hlsearch
" cancel search with Enter
nnoremap <silent> <CR> :noh<CR>

" show matching parenthesis
set showmatch

execute pathogen#infect()
" enable airline
set laststatus=2
" show git changes
let g:gitgutter_sign_column_always=1

" enable tabs for makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
  set noexpandtab
endif

