let g:hs_module_no_mappings = 1

function! s:auBindingsHaskellModName()
    nmap <buffer> <silent> <Leader>hM :InsertHaskellModuleName<CR>
endfunction
command! BindingsHaskellModName call <SID>auBindingsHaskellModName()

au BufNewFile,BufRead,WinEnter *.hs,*.lhs   :BindingsHaskellModName
