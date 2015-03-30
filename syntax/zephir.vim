" Copyright 2009 The Go Authors. All rights reserved.
if exists("b:current_syntax")
  finish
endif

syn case match

" Comments; their contents
syn keyword     zephirTodo              contained TODO FIXME XXX BUG
syn cluster     zephirCommentGroup      contains=zephirTodo
syn region      zephirComment           start="/\*" end="\*/" contains=@zephirCommentGroup,@Spell
syn region      zephirComment           start="//" end="$" contains=@zephirCommentGroup,@Spell

hi def link     zephirComment           Comment
hi def link     zephirTodo              Todo

syn keyword     zephirDirective         namespace
syn keyword     zephirDeclaration       var let
syn keyword     zephirDeclType          abstract class interface
syn keyword     zephirDeclType          public private protected static

hi def link     zephirDirective         Statement
hi def link     zephirDeclaration       Keyword
hi def link     zephirDeclType          Keyword

syn sync minlines=500

let b:current_syntax = "zephir"
