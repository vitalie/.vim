let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'     " Jump to a file if it's open already.
let g:ctrlp_mruf_max=450             " Number of recently opened files.
let g:ctrlp_max_files=0              " Do not limit the number of searchable files.
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_match_window = 'bottom,order:ttb,max:10,results:10'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pdf|jpg|png)$',
  \ }
let g:ctrlp_user_command = {
  \ 'types': {
    \1: ['.git', 'cd %s && git ls-files -- .  ":^vendor"'],
    \2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

