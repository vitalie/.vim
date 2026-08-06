" Prefer rg for file listing, falling back to ag, then fd (all respect
" .gitignore); if none are installed, fzf falls back to its own default.
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
elseif executable('ag')
  let $FZF_DEFAULT_COMMAND = "ag -g '' --hidden"
elseif executable('fd')
  let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git'
endif

let g:fzf_layout = { 'down': '~40%' }

" fzf.vim's default :Files command opens a preview pane (via
" fzf#vim#with_preview()); redefine it without that to keep the plain
" file-list-only window ctrlp used to give us.
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, {}, <bang>0)
