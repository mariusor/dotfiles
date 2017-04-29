" vim-plug
call plug#begin('~/.config/nvim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'elzr/vim-json'
    Plug 'tpope/vim-surround'
    Plug 'wellle/targets.vim'
"    Plug 'justinmk/vim-dirvish'
    Plug 'airblade/vim-gitgutter'
    Plug 'unblevable/quick-scope'
    Plug 'mbbill/undotree'
"    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-unimpaired'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'cfobel/vim-ragel'
    Plug 'fatih/vim-go'
    Plug 'ntpeters/vim-better-whitespace'
" Add plugins to &runtimepath
call plug#end()

syntax on
colorscheme darkburn
set nobackup
set nowritebackup
set noswapfile
set ignorecase
"set lcs=tab:>-,eol:$,nbsp:X
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set fileencoding=utf-8
"set encoding=utf-8

nmap <silent> <F2> :set nonumber!<CR>

"set statusline+=''

nmap <M-b> <Plug>LLBreakSwitch
vmap <F2> <Plug>LLStdInSelected
nnoremap <F4> :LLstdin<CR>
nnoremap <F5> :LLmode debug<CR>
nnoremap <F17> :LLmode code<CR>
nnoremap <F8> :LL continue<CR>
nnoremap <F20> :LL process interrupt<CR>
nnoremap <F9> :LL print <C-R>=expand('<cword>')<CR>
vnoremap <F9> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>

set incsearch
set t_Co=256
"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
"map <c-w><c-t> :WMToggle<cr>

filetype plugin indent on
filetype plugin on

" airline
set laststatus=2
let g:airline_powerline_fonts = 1
set clipboard=unnamed

set spell spelllang=en_gb
