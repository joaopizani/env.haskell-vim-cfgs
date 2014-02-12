" mappings for GHCMod
au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>ht :GhcModType<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>ht :GhcModType<CR>

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>hT :GhcModTypeInsert<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>hT :GhcModTypeInsert<CR>

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>hr :GhcModTypeClear<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>hr :GhcModTypeClear<CR>

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>hp :GhcModInfoPreview<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>hp :GhcModInfoPreview<CR>

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>hi :w<CR>:GhcModLint<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>hi :w<CR>:GhcModLint<CR>

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>he :GhcModExpand<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>he :GhcModExpand<CR>

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>


au BufNewFile,WinEnter *.hs  nmap <silent> <F9>   :w<CR>:GhcModCheck<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <F9>   :w<CR>:GhcModCheck<CR>

au BufNewFile,WinEnter *.hs  imap <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>
au BufNewFile,WinEnter *.lhs imap <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>

