let g:hs_module_no_mappings = 1

au BufNewFile,WinEnter *.hs  nmap <silent> <Leader>hM :InsertHaskellModuleName<CR>
au BufNewFile,WinEnter *.lhs nmap <silent> <Leader>hM :InsertHaskellModuleName<CR>
