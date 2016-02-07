" vim-plug
call plug#begin('~/.vim/plugged')

    Plug 'tpope/vim-sensible'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'elzr/vim-json'
    Plug 'tpope/vim-surround'
    Plug 'wellle/targets.vim'
    "Plug 'justinmk/vim-dirvish'
    Plug 'airblade/vim-gitgutter'
    Plug 'ChesleyTan/wordCount.vim'
    "Plug 'unblevable/quick-scope'
    Plug 'mbbill/undotree'
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
set fileencoding=utf-8
"set encoding=utf-8

nmap <silent> <F2> :set nonumber!<CR>

set statusline+=''

set incsearch
set t_Co=256
"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
"map <c-w><c-t> :WMToggle<cr> 

filetype plugin indent on
filetype plugin on

" status
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%t\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%9*\ words:%04{wordCount#WordCount()}\     "Word count
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

