noremap <silent> <buffer> <localleader>s :call SortTodo()<CR>

func! SortTodo()
  " replace all newlines with $
  exec "%s/\\n/\\$/g"
  " replace $$ with a newline, since this is a new todo
  exec "%s/\\$\\$/\\$\\r/g"
  " sort each todo based on its ranking
  exec "sort"
  " replace any new lines that happened in sort if they exist
  silent! exec "g/^$/d"
  " re-expand the todos by replacing $ with newline
  exec "%s/\\$/\\r/g"
  " remove any leftover $ if they exist
  silent! exec "%s/^\\$/"
endfunc

