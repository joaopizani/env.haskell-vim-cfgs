let $HASKROOT = fnamemodify(resolve(expand("<sfile>")), ":p:h")
source $HASKROOT/haskell-vim-basic.vim


" checks whether NeoBundle is present, then load plugin-specific stuff
if(exists("g:neobundle#log_filename"))
    filetype off
    source $HASKROOT/plugin-dependent/pluginlist.vim
    filetype plugin indent on

    " Loading per-plugin files containing the configs
    for f in split(glob(expand("$HASKROOT") . '/plugin-dependent/*.vim'), '\n')
        exe 'source' f
    endfor
endif

