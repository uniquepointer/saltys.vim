" Vim syntax file
" Language: Robopill Dependency Handler
" Maintainer: hyakuburns
" Latest Revision: ur mom

if exists("b:current_syntax")
  finish
endif

syn keyword sltyTODO contained TODO FIXME XXX NOTE
syn region sltyString start='"' end='"' contained
syn match sltySec "{\w*}"
syn match sltySub "[\w*]"
syn match sltyComment "//.*$" contains=sltyTodo
syn match sltyKey "^\s*\zs\I\i*\s*:"
syntax match sltyVal "\v-"

"hi def link     Statement
"hi def link          Type
"hi def link         PreProc
"hi def link       Constant
hi def link sltyTODO        Todo
hi def link sltyComment     Comment
hi def link sltyString      String
hi def link sltySec        Keyword
hi def link sltySub        Type
highlight link sltyVal     Operator


let b:current_syntax = "saltys"