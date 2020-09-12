call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
call plug#end()

syntax off
let mapleader = " "

set background=dark
set t_Co=256
set visualbell
set t_vb=
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set incsearch
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,full
set laststatus=2
set showmatch
set noswapfile

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](doc|tmp|node_modules)',
  \ 'file': '\v\.(so|swp|swo)',
  \ }

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
let g:NERDTreeNodeDelimiter = "\u00a0"
map <C-n> :NERDTreeToggle<CR>

let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
let g:ack_autoclose = 1
let g:ack_use_cword_for_empty_search = 1
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

autocmd Filetype go setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd Filetype c setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype make setlocal ts=4 sw=4 sts=4 noexpandtab
