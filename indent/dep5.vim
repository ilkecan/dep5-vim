if exists('b:did_indent')
  finish
endif
let b:did_indent = 1

setlocal
  \ indentexpr=GetDep5Indent(v:lnum)
  \ indentkeys+=<:>
let b:undo_indent = 'setlocal indentexpr< indentkeys<'

if exists('*GetDep5Indent')
  finish
endif

function! GetDep5Indent(lnum)
  let sw = shiftwidth()
  let prevLine = getline(prevnonblank(a:lnum - 1))
  let line = getline(a:lnum)

  if prevLine =~# '^\w\+:'
    return sw
  elseif line =~# '^\s\{' . sw . '}\w\+'
    return 0
  else
    return -1
  endif
endfunction
