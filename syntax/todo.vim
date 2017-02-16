" Vim syntax file
" Language: Todo
" Maintainer: Allie Larson
" Latest Revision: 16 Feb 2017

if exists("b:current_syntax")
  finish
endif

syntax match TodoDone '\s*[xX]\s.\+$'
syntax match TodoPriority1 '\s*[1]\s.\+$'
syntax match TodoPriority2 '\s*[2]\s.\+$'
syntax match TodoPriority3 '\s*[3]\s.\+$'
syntax match TodoPriorityUnknown '\s*[!]\s.\+$'

hi def link TodoDone Comment
hi def link TodoPriorityUnknown Statement
hi def link TodoPriority1 Type
hi def link TodoPriority2 Identifier
hi def link TodoPriority3 Constant

let b:current_syntax = "todo"

