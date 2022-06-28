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
    "Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
    Plug 'jssteinberg/hackline.vim'
    "Plug 'itchyny/lightline.vim'
    "Plug 'Akin909/lightline-statuslinetabs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'godlygeek/tabular'
    Plug 'skywind3000/asyncrun.vim'
" Language support
"    Plug 'jneen/ragel.vim'
    Plug 'fatih/vim-go'
    Plug 'vimwiki/vimwiki'
    Plug 'avakhov/vim-yaml'
    Plug 'plasticboy/vim-markdown'
"    Plug 'elzr/vim-json'
"    Plug 'zchee/nvim-go', { 'do': { -> 'make' } }
"    Plug 'wincent/ferret'
    Plug 'ntpeters/vim-better-whitespace'
"    Plug 'machakann/vim-highlightedyank'
    Plug 'igankevich/mesonic'
" treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'tree-sitter/tree-sitter-go'
    " required by treesitter darcula-solid
    "Plug 'rktjmp/lush.nvim'
" tags
"    Plug 'lyuts/vim-rtags'
"    Plug 'joereynolds/gtags-scope'
"    Plug 'vim-scripts/gtags.vim'
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
    "Plug 'briones-gabriel/darcula-solid.nvim'
    Plug 'dikiaap/minimalist'
"    Plug 'hardselius/warlock'
    " Add plugins to &runtimepath
    " Jai
    Plug 'ziglang/zig.vim'
    Plug 'jansedivy/jai.vim'
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

set updatetime=450
set lazyredraw

" w0rp/ale
"let g:ale_linters = {'c': ['clangtidy'], 'cpp': ['clangtidy'], 'go': ['gofmt', 'golint', 'govet', 'goimports']}

" http://joereynoldsaudio.com/programming/articles/navigating-in-vim
" needs gnu-global
set tags=./tags,tags;$HOME
"let g:GtagsCscope_Auto_Load = 1
"set cscopetag "search both cscopes db and the tags file
" lyuts/vim-rtags
"set completefunc=RtagsCompleteFunc
" Regular settings
syntax on
"let g:zenburn_high_Contrast = 1
"let g:zenburn_transparent = 1
"colorscheme zenburn
"colorscheme warlock
colorscheme darcula
scriptencoding utf-8
filetype plugin indent on
filetype plugin on
nmap <silent> <F1> :set relativenumber!<cr>:set nonumber!<cr>:set nolist!<cr> :GitGutterSignsToggle <cr> :ALEToggle<cr>
set hlsearch
set ignorecase
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
set laststatus=2
"set clipboard=unnamed
"set spell spelllang=en_gb
set showbreak=\\ "
set listchars=tab:»\ ,extends:›,precedes:‹,eol:¶,space:⋅,nbsp:⋅
set list
let mapleader = " "
set wildmenu

augroup Vimrc
    autocmd FocusLost,InsertEnter * setl norelativenumber
    autocmd FocusGained,InsertLeave * setl relativenumber
augroup END

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
noremap <Leader>\ :vs<cr> :wincmd l <cr>
noremap <Leader>- :sp<cr> :wincmd l <cr>

" FZF bindings
nnoremap <Leader>a :Rg!<space>

nnoremap <Leader>, :cn!<cr>
nnoremap <Leader>. :cp!<cr>

"nnoremap <Leader>b :bn<CR>
"nnoremap <Leader>f :bp<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <silent> <Leader>gg :Goyo <CR>
let g:goyo_width = 120
let g:goyo_height = 90
"let g:goyo_linenr = 20

" vimwiki
let g:vimwiki_list = [{'path': '~/.local/share/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Break undo sequence on Space, Tab and Enter
inoremap <Space> <Space><C-g>u
inoremap <Tab> <Tab><C-g>u
inoremap <CR> <CR><C-g>u

noremap <C-L>  :nohls<CR><C-L>

" lightline
"let g:lightline = { 'colorscheme': 'darcula' }
" airline
"let g:airline_powerline_fonts = 0
"let g:airline#extensions#tabline#enabled = 1

" hackline
" Active status:
let g:hackline_laststatus = 2
let g:hackline_mode = 1
let g:hackline_bufnum = 1
let g:hackline_filetype = 1
let g:hackline_ale = 1 " ALE errors and warnings if available
let g:hackline_nvim_lsp = 0 " Native nvim LSP info if available
let g:hackline_vim_lsp = 0 " Vim LSP info if available
let g:hackline_git = 0 " Current branch if available from plugins
let g:hackline_encoding = 1
let g:hackline_fileformat = 1
let g:hackline_tab_info = 1
let g:hackline_sign = "«N»"
" If you have a patched font, you can get a minor powerline feel:
"let g:hackline_separators = #{ l: "", r: "" }
let g:hackline_custom_end = '
			\%( words %{wordcount().words} %)
			\ %P/%L
			\'

" darcula improvements to gitgutter
hi! link GitGutterAdd GitAddStripe
hi! link GitGutterChange GitChangeStripe
hi! link GitGutterDelete GitDeleteStripe

"augroup highlight_yank autocmd! autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000) augroup END
au TextYankPost * silent! lua require'highlight'.on_yank("IncSearch", 1000, vim.v.event)

command Make :copen | :AsyncRun make

"let g:asyncrun_bell=1
"let g:asyncrun_mode='term'
"let g:asyncrun_open=8

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

