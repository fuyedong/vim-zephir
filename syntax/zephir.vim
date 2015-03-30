" Copyright 2009 The Go Authors. All rights reserved.
if exists("b:current_syntax")
  finish
endif

syn case match

" Comments; their contents
syn keyword     zepTodo              contained TODO FIXME XXX
syn cluster     zepCommentGroup      contains=zepTodo
syn region      zepComment           start="/\*" end="\*/" contains=@zepCommentGroup,@Spell
syn region      zepComment           start="//" end="$" contains=@zepCommentGroup,@Spell

hi def link     zepComment           Comment
hi def link     zepTodo              Todo

syn keyword     zepDirective         namespace extends implements instanceof parent self
syn keyword     zepDeclaration       var let return
syn keyword     zepDeclType          abstract class interface
syn keyword     zepDeclClass         public private protected static final

hi def link     zepDirective         Statement
hi def link     zepDeclaration       Keyword
hi def link     zepDeclType          Keyword
hi def link     zepDeclClass         Keyword

syn keyword     zepCond              if else switch
syn keyword     zepRepeat            for while
syn keyword     zepLabel             case default

hi def link     zepCond              Conditional
hi def link     zepRepeat            Repeat
hi def link     zepLabel             Label

syn keyword     zepOperator          count typeof
syn match       zepOperator          "[-=+%^&|*!.~?:]" contained display
syn match       zepOperator          "[-+*/%^&|.]="  contained display
syn match       zepOperator          "/[^*/]"me=e-1  contained display
syn match       zepOperator          "\$"  contained display
syn match       zepOperator          "&&\|\<and\>" contained display
syn match       zepOperator          "||\|\<x\=or\>" contained display
syn match       zepRelation          "[!=<>]=" contained display
syn match       zepRelation          "[<>]"  contained display
syn match       zepMemberSelector    "->"  contained display

hi def link     zepOperator          Operator
hi def link     zepRelation          Operator
hi def link     zepMemberSelector    Operator

syn keyword     zepType              array string char
syn keyword     zepType              bool true false null
syn keyword     zepType              int

hi def link     zepType              Type

syn match       zepGlobalVar         "_(SERVER|POST|GET|COOKIE|SESSION)\[.*\]" contained display
hi def link     zepGlobalVar         Label

syn sync minlines=500

let b:current_syntax = "zephir"
