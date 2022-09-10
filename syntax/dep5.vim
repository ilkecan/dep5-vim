if exists('b:current_syntax')
  finish
endif

runtime! syntax/debcopyright.vim
unlet b:current_syntax

syntax keyword dep5Todo contained
  \ FIXME
  \ TODO
  \ XXX
highlight link dep5Todo Todo

syntax match dep5Comment '^#.*$' contains=dep5Todo,@Spell
highlight link dep5Comment Comment

let b:current_syntax = 'dep5'
