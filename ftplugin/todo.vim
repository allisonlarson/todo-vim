noremap <silent> <buffer> <localleader>s :call SortTodo()<CR>

func! SortTodo()
  %s/\n/\$/g
  %s/\$\$/\$\r/g
  sort
  silent! g/^$/d
  %s/\$/\r/g
  silent! %s/^\$/
endfunc

