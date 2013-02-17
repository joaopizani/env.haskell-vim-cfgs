" mapping for launching the stylish-haskell beautifier
nnoremap <silent> <Leader>hB :w<CR>:%!stylish-haskell<CR>



" Concealing for Haskell (substituting some context-dependent character sequences with
" nicer Unicode symbols - arrows, lambdas, etc.). Originally based on the
" vim-haskellConceal plugin - http://github.com/Twinside/vim-haskellConceal
if exists('g:no_haskell_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" vim: set fenc=utf-8:
syntax match hsNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
syntax match hsNiceOperator "<-" conceal cchar=←
syntax match hsNiceOperator "->" conceal cchar=→
syntax match hsNiceOperator "\<sum\>" conceal cchar=∑
syntax match hsNiceOperator "\<product\>" conceal cchar=∏ 
syntax match hsNiceOperator "\<sqrt\>" conceal cchar=√ 
syntax match hsNiceOperator "\<pi\>" conceal cchar=π
syntax match hsNiceOperator "==" conceal cchar=≡
syntax match hsNiceOperator "\/=" conceal cchar=≠
syntax match hsNiceOperator ">>" conceal cchar=»

let s:extraConceal = 1
" Some windows font don't support some characters, so if they are being used, don't load them
if has("win32")
    let s:incompleteFont = ['Consolas', 'Lucida Console', 'Courier New']
    let s:mainfont = substitute( &guifont, '^\([^:,]\+\).*', '\1', '')
    for s:fontName in s:incompleteFont
        if s:mainfont ==? s:fontName
            let s:extraConceal = 0
            break
        endif
    endfor
endif

if s:extraConceal
    syntax match hsNiceOperator "\<undefined\>" conceal cchar=⊥

    " Match greater than and lower than w/o messing with Kleisli composition
    syntax match hsNiceOperator "<=\ze[^<]" conceal cchar=≲
    syntax match hsNiceOperator ">=\ze[^>]" conceal cchar=≳

    syntax match hsNiceOperator "=>" conceal cchar=⇒
    syntax match hsNiceOperator "=\zs<<" conceal cchar=«

    " Redfining to get proper '::' concealing
    syntax match hs_DeclareFunction /^[a-z_(]\S*\(\s\|\n\)*::/me=e-2 nextgroup=hsNiceOperator contains=hs_FunctionName,hs_OpFunctionName
    syntax match hsNiceOperator "\:\:" conceal cchar=∷

    syntax match hsniceoperator "++" conceal cchar=⧺
    syntax match hsNiceOperator "\<forall\>" conceal cchar=∀

    " Only replace the dot, avoid taking spaces around.
    syntax match hsNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘
    syntax match hsNiceOperator "\.\." conceal cchar=‥
endif

hi link hsNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2

