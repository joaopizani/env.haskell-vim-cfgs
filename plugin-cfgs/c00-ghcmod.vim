" mappings for GHCMod
au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>ht :GhcModType<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>ht :GhcModType<CR>

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>hT :GhcModTypeInsert<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>hT :GhcModTypeInsert<CR>

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>hr :GhcModTypeClear<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>hr :GhcModTypeClear<CR>

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>hp :GhcModInfoPreview<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>hp :GhcModInfoPreview<CR>

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>hi :w<CR>:GhcModLint<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>hi :w<CR>:GhcModLint<CR>

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>he :GhcModExpand<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>he :GhcModExpand<CR>

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>


au BufNewFile,BufRead *.hs  nnoremap <silent> <F9>       :w<CR>:GhcModCheck<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <F9>       :w<CR>:GhcModCheck<CR>

au BufNewFile,BufRead *.hs  inoremap <silent> <F9>       <C-o>:w<CR><C-o>:GhcModCheck<CR>
au BufNewFile,BufRead *.lhs inoremap <silent> <F9>       <C-o>:w<CR><C-o>:GhcModCheck<CR>

