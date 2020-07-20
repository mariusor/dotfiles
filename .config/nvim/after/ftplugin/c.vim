" w0rp/ale
" let g:ale_open_list = 1
let g:ale_enabled = 1
let g:ale_sign_error = 'ee'
let g:ale_sign_warning = 'ww'
let g:ale_lint_on_text_changed = 'never'
let g:ale_c_clangtidy_options = '-header-filter=.* -p=./build/compile_commands.json'
let g:ale_cpp_clangtidy_options = '-header-filter=.* -p=./build/compile_commands.json'
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_warn_about_trailing_blank_lines = 0
let g:ale_completion_enabled = 1

colorscheme 256_noir
