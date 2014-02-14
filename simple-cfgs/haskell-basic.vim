au BufNewFile,BufRead,WinEnter *.hs   nmap <buffer> <silent> <Leader>hB :w<CR>:%!stylish-haskell<CR>
au BufNewFile,BufRead,WinEnter *.lhs  nmap <buffer> <silent> <Leader>hB :w<CR>:%!stylish-haskell<CR>
