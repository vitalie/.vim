" Disable all linters as that is taken care of by coc.nvim.
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" Don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" Run go imports on file save.
let g:go_fmt_command = "goimports"

" Automatically highlight variable under cursor.
let g:go_auto_sameids = 0

" Syntax highlighting.
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1


autocmd BufEnter *.go nmap <leader>t  <Plug>(go-test)
autocmd BufEnter *.go nmap <leader>tt <Plug>(go-test-func)
autocmd BufEnter *.go nmap <leader>c  <Plug>(go-coverage-toggle)

" Show the function signature for a given routine
autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
" Show the interfaces a type implements
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
" Describe the definition of a given type
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
" See the callers of a given function
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)
