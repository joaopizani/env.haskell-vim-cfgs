let $HASKROOT = fnamemodify(resolve(expand("<sfile>")), ":p:h")
source $HASKROOT/haskell-vim-basic.vim


" checks whether NeoBundle is present, then load plugin-specific stuff
if(exists("g:neobundle#log_filename"))
    filetype off
    source $HASKROOT/plugin-dependent/pluginlist.vim
    filetype plugin indent on

    " Loading per-plugin configs, careful not to load the pluginlist again
    for f in split(glob(expand("$HASKROOT") . '/plugin-dependent/c*.vim'), '\n')
        exe 'source' f
    endfor
endif

