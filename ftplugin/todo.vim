noremap <silent> <buffer> <localleader>s :call SortTodo()<CR>
noremap <silent> <buffer> <localleader>x :call FinishTodo()<CR>

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

func! FinishTodo()
  " find current line
  let line = line(".")
  return MarkFinished(line)
endfun

func! MarkFinished(line)
  " get the indentation of the line, if its 0 then we are at the major todo
  " line, if not, call this function with the next line up
  if indent(a:line)
    return MarkFinished(a:line-1)
  else
    " replace whatever the ranking is with an x
    silent! exec ":" a:line "s/^\\S \\?/x /"
  endif
endfunc

