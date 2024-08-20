set path+=~/.local/opt/jai,~/.local/opt/jai/modules
set suffixesadd+=.jai

let g:jai_path='~/.local/opt/jai'
let g:jai_compiler='jai'
let g:jai_modules=g:jai_path . '/modules/'

autocmd FileType jai compiler jai

