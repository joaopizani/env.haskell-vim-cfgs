" mappings for GHCMod
au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>ht :GhcModType<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>ht :GhcModType<CR>

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>hT :GhcModTypeInsert<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>hT :GhcModTypeInsert<CR>

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>hr :GhcModTypeClear<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>hr :GhcModTypeClear<CR>

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>hp :GhcModInfoPreview<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>hp :GhcModInfoPreview<CR>

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>hi :w<CR>:GhcModLint<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>hi :w<CR>:GhcModLint<CR>

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>he :GhcModExpand<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>he :GhcModExpand<CR>

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>hc :w<CR>:GhcModCheck<CR>


au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <F9>   :w<CR>:GhcModCheck<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <F9>   :w<CR>:GhcModCheck<CR>

au BufNewFile,BufRead,WinEnter *.hs  imap <buffer> <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>
au BufNewFile,BufRead,WinEnter *.lhs imap <buffer> <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>

