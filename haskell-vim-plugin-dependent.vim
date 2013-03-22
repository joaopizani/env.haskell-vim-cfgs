" checks whether NeoBundle is present
if(exists("g:neobundle#log_filename"))
    " Loading Haskell bundles themselves
    filetype off
    source $HASKROOT/pluginlist.vim
    filetype plugin indent on


    " More usual stuff, keybindings, completion, tags and whatnot

    " Haskell lushtags + tagbar
    if executable('lushtags')
        let g:tagbar_type_haskell = {
            \ 'ctagsbin': 'lushtags',   'ctagsargs': '--ignore-parse-error --',
            \ 'kinds': [
                \ 'm:module:0', 'e:exports:1', 'i:imports:1', 't:declarations:0',
                \ 'd:declarations:1', 'n:declarations:1', 'f:functions:0', 'c:constructors:0'
            \ ],   'sro': '.',
            \ 'kind2scope': {'d': 'data', 'n': 'newtype', 'c': 'constructor', 't': 'type'},
            \ 'scope2kind': {'data': 'd', 'newtype': 'n', 'constructor': 'c', 'type': 't'}
        \ }
    endif

    let g:necoghc_enable_detailed_browse = 1

    " key mappings - mappings for GHCMod
    nnoremap <silent> <Leader>ht :GhcModType<CR>
    nnoremap <silent> <Leader>t  :GhcModType<CR>
    nnoremap <silent> <Leader>hr :GhcModTypeClear<CR>
    nnoremap <silent> <Leader>hi :GhcModInfoPreview<CR>
    nnoremap <silent> <Leader>he :GhcModInfo<CR>
    nnoremap <silent> <Leader>hl :w<CR>:GhcModLint<CR>
    nnoremap <silent> <Leader>hm :GhcModExpand<CR>

    nnoremap <silent> <Leader>hc :w<CR>:GhcModCheck<CR>
    nnoremap <silent> <F9>       :w<CR>:GhcModCheck<CR>
    inoremap <silent> <F9>       <ESC>:w<CR>:GhcModCheck<CR>i

    " mapping for inserting the current module name
    let g:hs_module_no_mappings = 1
    nnoremap <silent> <Leader>hM :InsertHaskellModuleName<CR>
endif
