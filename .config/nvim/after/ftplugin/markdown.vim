" Configuration for vim-markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

let g:airline_section_x = '%{PencilMode()}'
let g:pencil#wrapModeDefault = 'soft'
let g:pencil#textwidth = 74
let g:goyo_width = 80
let g:strip_whitespace_on_save=0

call pencil#init()
