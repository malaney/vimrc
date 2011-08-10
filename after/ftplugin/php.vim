" Lint-check a php file, uses a custom php.ini where error_reporting = E_ALL
" Set to your path
" noremap <C-N> :!/usr/local/bin/php -c /path/to/custom/php.ini -l %<CR>

" Execute php script within vim
" noremap <C-R> :!/usr/local/bin/php -c /path/to/custom/php.ini %<CR>



" Map <ctrl>+p to single line mode documentation (in insert and command mode)
inoremap <buffer> <C-D> :call PhpDocSingle()<CR>
nnoremap <buffer> <C-D> :call PhpDocSingle()<CR>
" " Map <ctrl>+p to multi line mode documentation (in visual mode)
vnoremap <buffer> <C-D> :call PhpDocRange()<CR>

" {{{ Alignment

vnoremap <buffer> <C-a> :call PhpAlign()<CR>

func! PhpAlign() range
   let l:paste = &g:paste
   let &g:paste = 0 

   let l:line        = a:firstline
   let l:endline     = a:lastline
   let l:maxlength = 0 
   while l:line <= l:endline
       if getline (l:line) =~ '^\s*\/\/.*$'
           let l:line = l:line + 1 
           continue
       endif
       let l:index = substitute (getline (l:line), '^\s*\(.\{-\}\)\s*=>\{0,1\}.*$', '\1', "") 
       let l:indexlength = strlen (l:index)
       let l:maxlength = l:indexlength > l:maxlength ? l:indexlength : l:maxlength
       let l:line = l:line + 1 
   endwhile

   let l:line = a:firstline
   let l:format = "%s%-" . l:maxlength . "s %s %s"

   while l:line <= l:endline
       if getline (l:line) =~ '^\s*\/\/.*$'
           let l:line = l:line + 1 
           continue
       endif
       let l:linestart = substitute (getline (l:line), '^\(\s*\).*', '\1', "") 
       let l:linekey   = substitute (getline (l:line), '^\s*\(.\{-\}\) *=>\{0,1\}.*$', '\1', "") 
       let l:linesep   = substitute (getline (l:line), '^\s*.* *\(=>\{0,1\}\).*$', '\1', "") 
       let l:linevalue = substitute (getline (l:line), '^\s*.* *=>\{0,1\}\s*\(.*\)$', '\1', "") 

       let l:newline = printf (l:format, l:linestart, l:linekey, l:linesep, l:linevalue)
       call setline (l:line, l:newline)
       let l:line = l:line + 1 
   endwhile
   let &g:paste = l:paste
endfunc

" }}}
