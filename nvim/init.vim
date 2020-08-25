"" Repo :
"" https://github.com/daaug/dev-configs
call plug#begin('~/.config/nvim/plugged')
Plug 'gkjgh/cobalt', { 'dir': '~/.config/nvim/colors' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi'
Plug 'ervandew/supertab'
call plug#end()

" Basic setup
set nocompatible
set laststatus=2

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" enable syntax and plugins
filetype plugin on

" supertab config
let g:SuperTabDefaultCompletionType = "<c-n>"

" open number and relnumber when vim start up
set nu
set rnu

" number and relative number lines
map <F7> :set nu!<CR>
map <f8> :set rnu!<CR>

" highlight line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Set theme
color cobalt
set bg=dark
set t_Co=256

" Misc
set nowrap
set completeopt-=preview
set autoindent

" Mapleader
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <leader>w :w<CR>

" NerdTree Open/Close
map <c-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Tabs as spaces
set tabstop=2 shiftwidth=2 expandtab

" Split vertical/horizontal and close
nnoremap <silent> vv <C-w>v<c-w>l
nnoremap <silent> vs <C-w>S<c-w>j

" Move between splits
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap j gj
nnoremap k gk

" Other shortcuts
nnoremap <leader>w :w<cr>b
nnoremap <leader>wq :wq<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>y Yp
nnoremap <leader>' :terminal<cr>
nnoremap <leader>ls :ls<cr>:b
nnoremap <F6> :bn<cr>
nnoremap <F5> :bp<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <F2> :tabnew<cr>
nnoremap <F4> :tabnext<cr>
nnoremap <F3> :tabprevious<cr>
nnoremap <leader>e :e 
nnoremap <leader><leader> :
nnoremap <s-h> :%s/
nnoremap <c-p> :Files<cr> 
nnoremap <c-f> :Ag 

" Resize panes
nnoremap <leader>= :res +2<cr>
nnoremap <leader>- :res -2<cr>
nnoremap = :vertical res +10<cr>
nnoremap - :vertical res -10<cr>

" gitgutter
set updatetime=100

" syntax set
au BufReadPost *.twig set syntax=php

"folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
