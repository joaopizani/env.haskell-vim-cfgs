" mappings for GHCMod
au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>ht :GhcModType<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>ht :GhcModType<CR>

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>hT :GhcModTypeInsert<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>hT :GhcModTypeInsert<CR>

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>hr :GhcModTypeClear<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>hr :GhcModTypeClear<CR>

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>hp :GhcModInfoPreview<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>hp :GhcModInfoPreview<CR>

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>hi :w<CR>:GhcModLint<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>hi :w<CR>:GhcModLint<CR>

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>he :GhcModExpand<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>he :GhcModExpand<CR>

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>


au BufNewFile,BufWinEnter *.hs  nmap <silent> <F9>   :w<CR>:GhcModCheck<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <F9>   :w<CR>:GhcModCheck<CR>

au BufNewFile,BufWinEnter *.hs  imap <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>
au BufNewFile,BufWinEnter *.lhs imap <silent> <F9>   <C-o>:w<CR><C-o>:GhcModCheck<CR>

