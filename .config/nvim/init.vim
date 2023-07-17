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
    Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
"    Plug 'godlygeek/tabular'
    Plug 'skywind3000/asyncrun.vim'
" Language support
"    Plug 'jneen/ragel.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'fatih/vim-go'
    Plug 'vimwiki/vimwiki'
    Plug 'avakhov/vim-yaml'
    Plug 'plasticboy/vim-markdown'
"    Plug 'elzr/vim-json'
"    Plug 'wincent/ferret'
    Plug 'ntpeters/vim-better-whitespace'
"    Plug 'machakann/vim-highlightedyank'
    Plug 'igankevich/mesonic'
    Plug 'udalov/kotlin-vim'
" treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'tree-sitter/tree-sitter-go'
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
    Plug 'vim-test/vim-test'
    Plug 'sebdah/vim-delve'
    Plug 'mfussenegger/nvim-dap'
    Plug 'leoluz/nvim-dap-go'
" Colorschemes
"    Plug 'TaurusOlson/darkburn.vim', { 'as': 'darkburn' }
"    Plug 'jnurmine/Zenburn'
"    Plug 'andreasvc/vim-256noir'
"    Plug 'doums/darcula'
    " required by treesitter darcula-solid and zenbones
    Plug 'rktjmp/lush.nvim'
    Plug 'mcchrish/zenbones.nvim'
    "Plug 'briones-gabriel/darcula-solid.nvim'
    Plug 'dikiaap/minimalist'
"    Plug 'hardselius/warlock'
    " Add plugins to &runtimepath
    Plug 'ziglang/zig.vim'
    " Jai
    Plug 'rluba/jai.vim'
    " Folding
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

"let g:zenbones_italic_comments = v:false
"let g:zenbones_darkness = "stark"
"let g:zenbones_transparent_background = v:true
"let g:nordbones_italic_comments = v:false
" seoulbones
let g:seoulbones_italic_comments = v:false
let g:seoulbones_lighten_noncurrent_window = v:true
let g:seoulbones_lighten_comments = 30
let g:seoulbones_transparent_background = v:true
let g:seoulbones_darkness = "stark"
" w0rp/ale
"let g:ale_linters = {'c': ['clangtidy'], 'cpp': ['clangtidy'], 'go': ['gofmt', 'golint', 'govet', 'goimports']}
" vimwiki
let g:vimwiki_list = [{'path': '~/.local/share/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" lightline
"let g:lightline = { 'colorscheme': 'darcula' }
" airline
"let g:airline_powerline_fonts = 0
"let g:airline#extensions#tabline#enabled = 1

" hackline
" Active status:
let g:hackline_laststatus = 2
let g:hackline_mode = 1
let g:hackline_bufnr = 1
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
let g:hackline_custom_end = '%( words %{wordcount().words} %) %P/%L'

let g:goyo_width = 120
let g:goyo_height = 90
"let g:goyo_linenr = 20

let g:asyncrun_bell=1
let g:asyncrun_mode='term'
let g:asyncrun_open=8

"let g:GtagsCscope_Auto_Load = 1
"let g:zenburn_high_Contrast = 1
"let g:zenburn_transparent = 1

" Regular settings
syntax on

function! MyHighlights() abort
    "highlight Visual     cterm=NONE ctermbg=76  ctermfg=16  gui=NONE guibg=#5fd700 guifg=#000000
    "highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
    "highlight Normal     cterm=NONE ctermbg=17              gui=NONE guibg=#00005f
    "highlight NonText    cterm=NONE ctermbg=17              gui=NONE guibg=#00005f
    hi Todo ctermfg=white
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

"colorscheme zenburn
"colorscheme warlock
"colorscheme darcula
"colorscheme zenbones
"colorscheme zenwritten
"colorscheme nordbones
colorscheme seoulbones
scriptencoding utf-8
nmap <silent> <F1> :set relativenumber!<cr>:set nonumber!<cr>:set nolist!<cr> :GitGutterSignsToggle <cr> :ALEToggle<cr>

filetype plugin indent on
filetype plugin on

"set cscopetag "search both cscopes db and the tags file
" lyuts/vim-rtags
"set completefunc=RtagsCompleteFunc
" http://joereynoldsaudio.com/programming/articles/navigating-in-vim
" needs gnu-global
set preserveindent
set tags=./tags,tags;$HOME
set updatetime=450
set lazyredraw
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
set laststatus=3
"set clipboard=unnamed
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
noremap <Leader>\ :vs<cr> :wincmd l <cr>
noremap <Leader>- :sp<cr> :wincmd l <cr>

" FZF bindings
nnoremap <Leader>a :Rg!<space>

nnoremap <Leader>, :cn!<cr>
nnoremap <Leader>. :cp!<cr>

"nnoremap <Leader>b :bn<CR>
"nnoremap <Leader>f :bp<CR>
nnoremap <Leader>d :bn<CR>:bd#<CR>
nnoremap <Leader>D :bd<CR>
nnoremap <silent> <Leader>gg :Goyo <CR>

"nnoremap oo mzo<Esc>`z
"nnoremap OO mzO<Esc>`z

augroup Vimrc
    autocmd FocusLost,InsertEnter * setl norelativenumber
    autocmd FocusGained,InsertLeave * setl relativenumber
augroup END

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set nonumber
  set norelativenumber
endfunction

" Break undo sequence on Space, Tab and Enter
inoremap <Space> <Space><C-g>u
inoremap <Tab> <Tab><C-g>u
inoremap <CR> <CR><C-g>u

noremap <C-L> :nohls<CR><C-L>
" Exit terminal with Esc
tnoremap <Esc><Esc> <C-\><C-n>

" Automatically open quickfix window when compiling
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" darcula improvements to gitgutter
hi! link GitGutterAdd GitAddStripe
hi! link GitGutterChange GitChangeStripe
hi! link GitGutterDelete GitDeleteStripe

augroup highlight_yank autocmd! autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000) augroup END
"au TextYankPost * silent! lua require'highlight'.on_yank("IncSearch", 1000, vim.v.event)

command Make :AsyncRun :make

" FIXME():
match TODO /TODO/
hi def link TODO Todo
hi! TODO ctermfg=yellow
hi def link NOTE Todo
match NOTE /NOTE/

syn keyword NOTE contained NOTE
hi! NOTE ctermfg=white

autocmd BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
"autocmd Filetype d setlocal noexpandtab copyindent preserveindent softtabstop=0 shiftwidth=4 tabstop=4
" Enable cursor shape switching on mode change
if has('nvim')
  set guicursor=i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150
endif
if exists('+termguicolors')
    set termguicolors
else
    set t_Co=256
endif

if exists("g:neovide")
    set guifont=Source\ Code\ Pro:h13
    "let g:neovide_scroll_animation_length = 0
    let g:neovide_cursor_animation_length = 0
endif
