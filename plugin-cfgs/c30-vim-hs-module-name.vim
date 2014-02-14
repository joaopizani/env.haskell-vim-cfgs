let g:hs_module_no_mappings = 1

au BufNewFile,BufRead,WinEnter *.hs  nmap <buffer> <silent> <Leader>hM :InsertHaskellModuleName<CR>
au BufNewFile,BufRead,WinEnter *.lhs nmap <buffer> <silent> <Leader>hM :InsertHaskellModuleName<CR>
