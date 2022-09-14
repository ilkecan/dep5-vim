if exists('b:current_syntax')
  finish
endif

runtime! syntax/debcopyright.vim
unlet b:current_syntax

syntax match dep5Comment '^#.*$'
  \ contains=
    \ @Spell,
    \ dep5Todo,
syntax keyword dep5Todo
  \ contained
  \ FIXME
  \ TODO
  \ XXX

highlight link dep5Comment Comment
highlight link dep5Todo Todo

let b:current_syntax = 'dep5'
