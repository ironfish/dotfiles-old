fun! scalacomplete#Complete(findstart, base)
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    let res = []
"    for m in split("Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec")
    for m in sort(readfile('/Users/ddevore/.vim/autoload/scalacomplete.txt'))
"    for m in readfile('/Users/ddevore/.vim/autoload/scalacomplete.txt')
      echo m
      echo m
      if m =~ '^' . a:base
"        call add(res, m)
        let scalaword = split(m, '|')
        echo scalaword
"        call add(res, scalaword)
        call add(res, {'word': scalaword[0], 'abbr': scalaword[1], 'menu': scalaword[2], 'icase': 1, 'dup': 1})
      endif
    endfor
    return res
  endif
endfunction
