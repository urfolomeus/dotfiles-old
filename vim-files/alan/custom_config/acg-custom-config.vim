" Default color scheme
color vibrantink

" Change cursor in insert mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

autocmd BufNewFile,BufRead /Users/urfolomeus/src/personal/learning/7l7w/prolog/*.pl set filetype=prolog
au BufRead,BufNewFile *.scala set filetype=scala

" Save on focus lost
:au FocusLost * silent! wa

map <leader>ew :e %:p:h<CR>

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=99        "set to a high value so that cold folding doesn't do weird shit when first turned on
