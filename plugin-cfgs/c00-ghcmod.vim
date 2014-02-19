function! s:auBindingsHaskellGHCMod()
    nmap <buffer> <silent> <Leader>ht :GhcModType<CR>
    nmap <buffer> <silent> <Leader>hT :GhcModTypeInsert<CR>
    nmap <buffer> <silent> <Leader>hr :GhcModTypeClear<CR>
    nmap <buffer> <silent> <Leader>hp :GhcModInfoPreview<CR>
    nmap <buffer> <silent> <Leader>hi :w<CR>:GhcModLint<CR>
    nmap <buffer> <silent> <Leader>he :GhcModExpand<CR>
    nmap <buffer> <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
    nmap <buffer> <silent> <F9>   :w<CR>:GhcModCheck<CR>
    imap <buffer> <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>
endfunction
command! BindingsHaskellGHCMod call <SID>auBindingsHaskellGHCMod()

au BufNewFile,BufRead,WinEnter *.hs,*.lhs   :BindingsHaskellGHCMod
