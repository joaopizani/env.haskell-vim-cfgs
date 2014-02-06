let g:hs_module_no_mappings = 1

au BufNewFile,BufRead *.hs  nnoremap <silent> <Leader>hM :InsertHaskellModuleName<CR>
au BufNewFile,BufRead *.lhs nnoremap <silent> <Leader>hM :InsertHaskellModuleName<CR>
