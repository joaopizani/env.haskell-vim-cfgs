let g:hs_module_no_mappings = 1

au BufNewFile,BufWinEnter *.hs  nmap <silent> <Leader>hM :InsertHaskellModuleName<CR>
au BufNewFile,BufWinEnter *.lhs nmap <silent> <Leader>hM :InsertHaskellModuleName<CR>
