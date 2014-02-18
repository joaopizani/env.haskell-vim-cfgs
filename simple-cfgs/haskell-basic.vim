au BufNewFile,BufRead,WinEnter *.hs,*.lhs   nmap <buffer> <silent> <Leader>hB :w<CR>:%!stylish-haskell<CR>
