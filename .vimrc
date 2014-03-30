syntax on
colorscheme darkburn
set nobackup
set nowritebackup
set noswapfile
"syntax enable
set ignorecase
set lcs=tab:>-,eol:$,nbsp:X
set tabstop=4
set shiftwidth=4
set expandtab
set number
nmap <silent> <F2> :set nonumber!<CR>
filetype indent on
filetype on
filetype plugin on
set incsearch
if has("gui_running")
  if has("gui_gtk2")
"	colorscheme darkburn
	set guifont=Terminus\ 9
	set guioptions-=r
  endif
endif
set t_Co=256
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr> 

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
