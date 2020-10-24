"" Repo :
"" https://github.com/daaug/dev-configs

"""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

  "Plug 'Xuyuanp/nerdtree-git-plugin'
  "Plug 'ervandew/supertab'
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "Plug 'scrooloose/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'davidhalter/jedi'
  Plug 'gkjgh/cobalt', { 'dir': '~/.config/nvim/colors' }
  Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/emmet-vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-surround'

call plug#end()

"""""""""""""""""""""""""""""""

""" VIM COMMANDS
  " enable syntax and plugins
  filetype plugin on

  " open number and relnumber when vim start up
  set nu
  set rnu

  " open number and relnumber when vim start up
  set nu
  set rnu

  " highlight line
  set cursorline
  hi CursorLine term=bold cterm=bold guibg=Grey40

  " Set theme
  color cobalt
  set bg=dark
  set t_Co=256

  " Text config
  set nowrap
  set completeopt-=preview
  set autoindent

  " Tabs as spaces
  set tabstop=2 shiftwidth=2 expandtab


  "" VIM SHORTCUTS
    " By default <leader> = \
    " File control
    nnoremap <leader>e :e 
    nnoremap <leader>q :q<cr>
    nnoremap <leader>w :w<cr>

    " number and relative number lines
    map <F7> :set nu!<CR>
    map <f8> :set rnu!<CR>

    " Buffer control
    nnoremap <leader>ls :ls<cr>:b
    nnoremap <F6> :bn<cr>
    nnoremap <F5> :bp<cr>
    nnoremap <leader>bd :bd<cr>

    " Split vertical/horizontal and close
    nnoremap <silent> vv <C-w>v<c-w>l
    nnoremap <silent> vs <C-w>S<c-w>j

    " Splits navigation
    nnoremap <c-h> <c-w>h
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-l> <c-w>l
    nnoremap j gj
    nnoremap k gk

    " Splits size
    nnoremap <leader>= :res +2<cr>
    nnoremap <leader>- :res -2<cr>
    nnoremap = :vertical res +10<cr>
    nnoremap - :vertical res -10<cr>

    " Tabs control
    nnoremap <F2> :tabnew<cr>
    nnoremap <F4> :tabnext<cr>
    nnoremap <F3> :tabprevious<cr>

  "" END VIM SHORTCUTS
""" END VIM COMMANDS

"""""""""""""""""""""""""""""""

""" FZF COMMANDS
  "" BEGIN SHORTCUTS

    " FZF call
    nnoremap <c-f> :FZF<CR> 

  "" END SHORTCUTS
""" END FZF COMMANDS

"""""""""""""""""""""""""""""""

""" SUPERTAB COMMANDS
  "" BEGIN SHORTCUTS

    " Creat supertab call
    "let g:SuperTabDefaultCompletionType = "<c-n>"

  "" END SHORTCUTS
""" END SUPERTAB COMMANDS

"""""""""""""""""""""""""""""""

""" GITGUTTER COMMANDS
  "" BEGIN SHORTCUTS

    " Git control in ms
    set updatetime=100

  "" END SHORTCUTS
""" END GITGUTTER COMMANDS

"""""""""""""""""""""""""""""""
