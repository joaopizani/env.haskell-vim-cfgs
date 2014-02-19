function! s:auBindingsHaskellStylish()
    nmap <buffer> <silent> <Leader>hB :w<CR>:%!stylish-haskell<CR>
endfunction
command! BindingsHaskellStylish call <SID>auBindingsHaskellStylish()

au BufNewFile,BufRead,WinEnter *.hs,*.lhs   :BindingsHaskellStylish
