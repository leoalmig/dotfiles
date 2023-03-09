set nocompatible
filetype off

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'

" Plugins I use at work
"Plug 'mattn/emmet-vim'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', {'branch': 'main'}
call plug#end()

filetype plugin indent on
syntax enable
set encoding=utf-8
set background=light
colorscheme leco

set lazyredraw
set visualbell
set t_vb=
set scrolloff=2
set wildmenu
set wildmode=longest:full,full
set foldmethod=manual
set nofoldenable
set pumheight=10
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
set laststatus=2
set updatetime=200

let g:ctrlp_user_command = 'rg %s --files --hidden --color=never -g "!{tmp,node_modules,.git,deps,build,_build,dist,_dist,obj,bin,*.beam}"'
let g:ctrlp_working_path_mode = 0

let g:rg_command = 'rg --vimgrep -S -g "!{tmp,node_modules,.git,deps,build,_build,dist,_dist,obj,bin,*.beam}"'

let g:coc_global_extensions = ['coc-tsserver']
call coc#config('suggest', { 'floatConfig': { 'border': [1,1,1,1] } })
call coc#config('hover', { 'floatConfig': { 'border': [1,1,1,1] } })
call coc#config('diagnostic', { 'floatConfig': { 'border': [1,1,1,1] } })
call coc#config('signature', { 'floatConfig': { 'border': [1,1,1,1] } })

nnoremap <C-n> :Ex<CR>
nnoremap <C-g> :Rg<Space>
nnoremap <C-l> :vsp<CR>
nnoremap <C-j> :sp<CR>
nnoremap <C-k> :call ShowDocumentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Trim trailing spaces when saving files
autocmd BufWritePre * :%s/\s\+$//e

au BufEnter,BufNew *.erl,*.hrl setlocal ts=4 sw=4 sts=4
au FileType make setlocal noexpandtab ts=8 sw=8 sts=8
