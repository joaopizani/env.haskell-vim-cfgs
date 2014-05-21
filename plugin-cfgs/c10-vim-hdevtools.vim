function! s:auBindingsHaskellHdevtools()
    nmap <buffer> <silent> <F9> :HdevtoolsType<CR>
    imap <buffer> <silent> <F9> <C-o>:HdevtoolsType<CR>

    nmap <buffer> <silent> <F10> :HdevtoolsClear<CR>
    imap <buffer> <silent> <F10> <C-o>:HdevtoolsClear<CR>
endfunction
command! BindingsHaskellHdevtools call <SID>auBindingsHaskellHdevtools()

au BufNewFile,BufRead,WinEnter *.hs,*.lhs   :BindingsHaskellHdevtools
