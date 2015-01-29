autocmd FileType *
  \ if &omnifunc != '' |
  \ call SuperTabChain(&omnifunc, "<c-p>") |
  \ call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
  \ endif
