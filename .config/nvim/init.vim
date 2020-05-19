" vim-plug
call plug#begin('~/.config/nvim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-fugitive'
"    Plug 'tpope/vim-eunuch'
"    Plug 'wellle/targets.vim'
"    Plug 'justinmk/vim-dirvish'
    Plug 'airblade/vim-gitgutter'
    "Plug 'unblevable/quick-scope'
"    Plug 'mbbill/undotree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
"    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'godlygeek/tabular'
" Language support
"    Plug 'jneen/ragel.vim'
    Plug 'fatih/vim-go'
    Plug 'vimwiki/vimwiki'
    Plug 'avakhov/vim-yaml'
    Plug 'plasticboy/vim-markdown'
"    Plug 'elzr/vim-json'
"    Plug 'zchee/nvim-go', { 'do': 'make'}
    Plug 'wincent/ferret'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'machakann/vim-highlightedyank'
    Plug 'igankevich/mesonic'
" tags
"    Plug 'lyuts/vim-rtags'
    Plug 'joereynolds/gtags-scope'
" Make stuff
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
"    Plug 'w0rp/ale'
"    Plug 'neomake/neomake'
" Writing stuff
    Plug 'reedes/vim-pencil'
    Plug 'junegunn/goyo.vim'
" debugger
"    Plug 'strottos/vim-padre'
" Colorschemes
"    Plug 'TaurusOlson/darkburn.vim', { 'as': 'darkburn' }
"    Plug 'jnurmine/Zenburn'
    Plug 'andreasvc/vim-256noir'
    Plug 'doums/darcula'
"    Plug 'dikiaap/minimalist'
    "Plug 'thiagoalessio/rainbow_levels.vim'
    Plug 'hardselius/warlock'
    " Add plugins to &runtimepath
call plug#end()

" Plugin settings
" ntpeters/vim-better-whitespace
"autocmd BufEnter *.[^(md)] EnableStripWhitespaceOnSave
let g:strip_only_modified_lines=1
let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1
" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete = 1
"let g:deoplete#auto_complete_popup = 'auto'
" airline
let g:airline_powerline_fonts = 1

set updatetime=750
set lazyredraw
" w0rp/ale
" let g:ale_open_list = 1
let g:ale_enabled = 0
let g:ale_sign_error = 'ee'
let g:ale_sign_warning = 'ww'
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'c': ['clangtidy'], 'cpp': ['clangtidy'], 'go': ['gofmt', 'golint', 'govet', 'goimports']}
let g:ale_c_clangtidy_options = '-header-filter=.* -p=./build/compile_commands.json'
let g:ale_cpp_clangtidy_options = '-header-filter=.* -p=./build/compile_commands.json'
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_warn_about_trailing_blank_lines = 0
let g:ale_completion_enabled = 0

" http://joereynoldsaudio.com/programming/articles/navigating-in-vim
set cscopetag "search both cscopes db and the tags file
" lyuts/vim-rtags
"set completefunc=RtagsCompleteFunc
" Regular settings
syntax on
"let g:zenburn_high_Contrast = 1
"let g:zenburn_transparent = 1
"colorscheme zenburn
colorscheme warlock
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
scriptencoding utf-8
filetype plugin indent on
filetype plugin on
nmap <silent> <F1> :set relativenumber!<cr>:set nonumber!<cr>:set nolist!<cr> :GitGutterSignsToggle <cr>
":ALEToggle<cr>
set cursorline
set fileencoding=utf-8
set encoding=utf-8
set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set cinoptions+=(1s
set incsearch
set smartcase
"set clipboard=unnamed
set laststatus=2
"set spell spelllang=en_gb
set showbreak=\\ "
set listchars=tab:»\ ,extends:›,precedes:‹,eol:¶,space:⋅,nbsp:⋅
set list
let mapleader = " "
set wildmenu

" copy/paste stuff
map <Leader>c "+y
map <Leader>v "+gP
map <Leader>x "+yx
"map Ctrl+[ <Leader>rj

nnoremap L :bnext<cr>
nnoremap H :bprevious<cr>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

noremap <Leader>o :on<cr>
noremap <Leader>\| :vs<cr> :wincmd l <cr>
noremap <Leader>- :sp<cr> :wincmd l <cr>

"nnoremap <Leader>b :bn<CR>
"nnoremap <Leader>f :bp<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <silent> <Leader>gg :Goyo<CR>

hi Todo ctermfg=white
autocmd BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
autocmd Filetype d setlocal noexpandtab copyindent preserveindent softtabstop=0 shiftwidth=4 tabstop=4
" Enable cursor shape switching on mode change
if has('nvim')
  set guicursor=i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150
endif
if exists('+termguicolors')
    set termguicolors
else
    set t_Co=256
endif

