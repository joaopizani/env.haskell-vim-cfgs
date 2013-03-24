" mappings for GHCMod
nnoremap <silent> <Leader>t  :GhcModType<CR>
nnoremap <silent> <Leader>hi :GhcModTypeInsert<CR>
nnoremap <silent> <Leader>hr :GhcModTypeClear<CR>
nnoremap <silent> <Leader>hp :GhcModInfoPreview<CR>
nnoremap <silent> <Leader>hl :w<CR>:GhcModLint<CR>
nnoremap <silent> <Leader>hm :GhcModExpand<CR>

nnoremap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
nnoremap <silent> <F9>       :w<CR>:GhcModCheck<CR>
inoremap <silent> <F9>       <ESC>:w<CR>:GhcModCheck<CR>i

