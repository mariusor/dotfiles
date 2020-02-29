" Go plugin
"map Ctrl+] :GoGuruDefinition
"map Ctrl+] :GoDef

"noremap <Leader>f :GoReferrers<cr>
"noremap <Leader>e :GoCallees<cr>
"noremap <Leader>F :GoFmt<cr>
"noremap <Leader>i :GoInfo<cr>

nmap <Leader>f <Plug>(go-referrers)
nmap <Leader>i <Plug>(go-info)
"nmap <Leader>ii <Plug>(go-describe)
nmap <Leader>F <Plug>(go-fmt)
nmap <Leader>R <Plug>(go-rename)
nmap <Leader>? <Plug>(go-doc-vertical)

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

