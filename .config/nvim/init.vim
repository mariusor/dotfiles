" vim-plug
call plug#begin('~/.config/nvim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'godlygeek/tabular'
"    Plug 'plasticboy/vim-markdown'
"    Plug 'elzr/vim-json'
    Plug 'tpope/vim-surround'
"    Plug 'wellle/targets.vim'
"    Plug 'justinmk/vim-dirvish'
    Plug 'airblade/vim-gitgutter'
    Plug 'unblevable/quick-scope'
"    Plug 'mbbill/undotree'
"    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-unimpaired'
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'jneen/ragel.vim'
    Plug 'fatih/vim-go'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'Shougo/deoplete.nvim'
"    Plug 'dbgx/lldb.nvim'
    Plug 'w0rp/ale'
"    Plug 'neomake/neomake'
    Plug 'wincent/ferret'
    Plug 'joereynolds/gtags-scope'
    Plug 'machakann/vim-highlightedyank'
"    Plug 'lyuts/vim-rtags'
    Plug 'igankevich/mesonic'
    Plug 'vimwiki/vimwiki'
" Add plugins to &runtimepath
call plug#end()

" Plugin settings
" dbgx/lldb.nvim
nmap <M-b> <Plug>LLBreakSwitch
vmap <F2> <Plug>LLStdInSelected
nnoremap <F4> :LLstdin<CR>
nnoremap <F5> :LLmode debug<CR>
nnoremap <S-F5> :LLmode code<CR>
nnoremap <F17> :LLmode code<CR>
nnoremap <F8> :LL continue<CR>
nnoremap <S-F8> :LL process interrupt<CR>
nnoremap <F20> :LL process interrupt<CR>
nnoremap <F9> :LL print <C-R>=expand('<cword>')<CR>
vnoremap <F9> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>
" ntpeters/vim-better-whitespace
autocmd BufEnter *.[^(md)] EnableStripWhitespaceOnSave
" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
" airline
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#ale#enabled = 1
set updatetime=750
set lazyredraw
" w0rp/ale
" let g:ale_open_list = 1
let g:ale_enabled = 1
let g:ale_sign_error = 'ee'
let g:ale_sign_warning = 'ww'
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'c': ['clangtidy'], 'cpp': ['clangtidy']}
let g:ale_c_clangtidy_options = '-header-filter=.* -p=./build/compile_commands.json'
let g:ale_cpp_clangtidy_options = '-header-filter=.* -p=./build/compile_commands.json'

" http://joereynoldsaudio.com/programming/articles/navigating-in-vim
"set cscopetag "search both cscopes db and the tags file
" lyuts/vim-rtags
"set completefunc=RtagsCompleteFunc

" Regular settings
syntax on
colorscheme darkburn
scriptencoding utf-8
filetype plugin indent on
filetype plugin on
nmap <silent> <F1> :set relativenumber!<cr>:set nonumber!<cr>:set nolist!<cr> :GitGutterSignsToggle <cr> :ALEToggle<cr>
set cursorline
set fileencoding=utf-8
set encoding=utf-8
set nobackup
set nowritebackup
set noswapfile
"set ignorecase
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set cinoptions+=(1s
set incsearch
set t_Co=256
"set clipboard=unnamed
set laststatus=2
set spell spelllang=en_gb
set showbreak=\\ "
set listchars=tab:»\ ,extends:›,precedes:‹,eol:¶,space:⋅,nbsp:⋅
set list

let mapleader = " "
" copy/paste stuff
map <Leader>c "+y
map <Leader>v "+gP
map <Leader>x "+yx
map Ctrl+[ <Leader>rj

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

noremap <Leader>o :on<cr>
noremap <Leader>\| :vs<cr> :wincmd l <cr>
noremap <Leader>- :sp<cr> :wincmd l <cr>

hi Todo ctermfg=white
autocmd BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
autocmd Filetype d setlocal noexpandtab copyindent preserveindent softtabstop=0 shiftwidth=4 tabstop=4
" Enable cursor shape switching on mode change
if has('nvim')
  set guicursor=i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150
endif
