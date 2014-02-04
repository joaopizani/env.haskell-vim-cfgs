" mappings for GHCMod
nnoremap <silent> <Leader>ht :GhcModType<CR>
nnoremap <silent> <Leader>hT :GhcModTypeInsert<CR>
nnoremap <silent> <Leader>hr :GhcModTypeClear<CR>
nnoremap <silent> <Leader>hp :GhcModInfoPreview<CR>
nnoremap <silent> <Leader>hi :w<CR>:GhcModLint<CR>
nnoremap <silent> <Leader>he :GhcModExpand<CR>

nnoremap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
nnoremap <silent> <F9>       :w<CR>:GhcModCheck<CR>
inoremap <silent> <F9>       <C-o>:w<CR><C-o>:GhcModCheck<CR>

