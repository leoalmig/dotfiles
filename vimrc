call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
call plug#end()

syntax off
filetype indent off

set background=light
set visualbell
set t_vb=
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set scrolloff=2
set incsearch
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,full
set laststatus=2
set noswapfile
set nosmartindent
set splitright
set splitbelow
let g:loaded_matchparen = 1

nnoremap <C-l> :set number!<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-g> :Rg<Space>

let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrowExpandable = ">"
let g:NERDTreeDirArrowCollapsible = "v"
let g:NERDTreeNodeDelimiter= "\u00a0"

let g:ctrlp_user_command = 'rg %s --files --color=never -g "!{tmp,node_modules,.git,deps,build,_build,dist,_dist}"'
let g:rg_command = 'rg --vimgrep -S -g "!{tmp,node_modules,.git,deps,build,_build,dist,_dist}"'

autocmd Filetype make setlocal ts=4 sw=4 sts=4 noexpandtab
