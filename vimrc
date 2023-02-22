filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set colorcolumn=120
set number
set encoding=utf-8
set fileencoding=utf-8
set updatetime=100

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

" Plugin: nerdtree
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Plugin: vim-airline
" There is a pause when leaving insert mode
set ttimeoutlen=10
" The powerline font symbols are not showing up
let g:airline_powerline_fonts = 1
" remove those angle at the end
let g:airline_skip_empty_sections = 1

" Plugin: vim-gitgutter
" show git changes
let g:gitgutter_sign_column_always=1

" enable tabs for makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
  set noexpandtab
endif

