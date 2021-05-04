" Go plugin
map Ctrl+] :GoGuruDefinition
"map Ctrl+] :GoDef
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
let g:go_def_reuse_buffer = 1
let g:go_list_type = 'quickfix'
"let g:go_list_type = 'locationlist'
let g:go_list_type_commands = {"GoBuild": "quickfix"}
let g:go_term_enabled = 0
let g:go_term_close_on_exit = 1
let g:go_template_autocreate = 0
let g:go_echo_command_info = 0
let g:go_echo_go_info = 0
let g:go_auto_sameids = 0
let g:go_auto_type_info = 0

"noremap <Leader>f :GoReferrers<cr>
"noremap <Leader>e :GoCallees<cr>
"noremap <Leader>F :GoFmt<cr>
"noremap <Leader>i :GoInfo<cr>
noremap <Leader>i :Denite decls<cr>

"nmap <Leader>s <Plug>(go-same-ids)
nmap <Leader>f <Plug>(go-referrers)
nmap <Leader>i <Plug>(go-info)
nmap <Leader>I <Plug>(go-describe)
nmap <Leader>F <Plug>(go-fmt)
nmap <Leader>R <Plug>(go-rename)
nmap <Leader>? <Plug>(go-doc-vertical)
nmap <Leader>m <Plug>(go-implements)
nmap <Leader>c <Plug>(go-callees)
nmap <Leader>C <Plug>(go-callers)

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
