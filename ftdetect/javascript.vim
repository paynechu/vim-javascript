au BufNewFile,BufRead *.js set filetype=javascript
au BufNewFile,BufRead *.jsm set filetype=javascript
au BufNewFile,BufRead Jakefile set filetype=javascript

fun! s:SelectJavascript()
  if getline(1) =~# '^#!.*/bin/env\s\+node\>'
    set ft=javascript
  endif
endfun
au BufNewFile,BufRead * call s:SelectJavascript()
