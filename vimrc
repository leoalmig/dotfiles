call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
call plug#end()

syntax off
filetype indent off

set encoding=utf-8
set background=light
set visualbell
set t_vb=
set scrolloff=2
set wildmenu
set wildmode=longest:full,full
set laststatus=2
set foldmethod=manual
set nofoldenable

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set splitright
set splitbelow

set nobackup
set nowritebackup
set noswapfile
set nosmartindent

set backspace=indent,eol,start
set incsearch

let g:loaded_matchparen = 1
let g:ctrlp_user_command = 'rg %s --files --color=never -g "!{tmp,node_modules,.git,deps,build,_build,dist,_dist}"'
let g:rg_command = 'rg --vimgrep -S -g "!{tmp,node_modules,.git,deps,build,_build,dist,_dist}"'

nnoremap <C-l> :e ~/Desktop/tmp<CR>
nnoremap <C-g> :Rg<Space>
nnoremap <C-n> :Ex<CR>
vnoremap <C-j> zf

autocmd Filetype make setlocal ts=4 sw=4 sts=4 noexpandtab
