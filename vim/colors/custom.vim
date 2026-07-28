highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom"

highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
set termguicolors

let s:bg      = "#000000"
let s:fg      = "#ffffff"
let s:accent  = "#d79921"
let s:accent2 = "#eb4034"
let s:accent_dark = "#fe8019"
let s:accent2_dark = "#962338"

let s:c0  = "#282828"
let s:c1  = "#cc241d"
let s:c2  = "#98971a"
let s:c3  = "#d79921"
let s:c4  = "#458588"
let s:c5  = "#b16286"
let s:c6  = "#689d6a"
let s:c7  = "#a89984"
let s:c8  = "#928374"
let s:c9  = "#fb4934"
let s:c10 = "#b8bb26"
let s:c11 = "#fabd2f"
let s:c12 = "#83a598"
let s:c13 = "#d3869b"
let s:c14 = "#8ec07c"
let s:c15 = "#ebdbb2"

" UI

exec "hi Normal           ctermfg=15  ctermbg=NONE  cterm=none  guifg=" . s:fg . " guibg=NONE gui=none"
exec "hi NormalNC         ctermfg=8   ctermbg=NONE  cterm=none  guifg=" . s:c8 . " guibg=NONE gui=none"

exec "hi CursorLine       ctermfg=NONE  ctermbg=0   cterm=none  guifg=NONE guibg=" . s:c0 . " gui=none"
exec "hi CursorColumn     ctermfg=NONE  ctermbg=0   cterm=none  guifg=NONE guibg=" . s:c0 . " gui=none"
exec "hi CursorLineNr     ctermfg=11  ctermbg=0     cterm=bold  guifg=" . s:accent . " guibg=" . s:c0 . " gui=bold"
exec "hi LineNr           ctermfg=8   ctermbg=NONE  cterm=none  guifg=" . s:c8 . " guibg=NONE gui=none"
exec "hi ColorColumn      ctermfg=NONE  ctermbg=0   cterm=none  guifg=NONE guibg=" . s:c0 . " gui=none"
exec "hi SignColumn       ctermfg=8   ctermbg=NONE  cterm=none  guifg=" . s:c8 . " guibg=NONE gui=none"

exec "hi TabLine          ctermfg=8   ctermbg=0     cterm=none  guifg=" . s:c8 . " guibg=" . s:c0 . " gui=none"
exec "hi TabLineSel       ctermfg=15  ctermbg=0     cterm=bold  guifg=" . s:fg . " guibg=" . s:c0 . " gui=bold"
exec "hi TabLineFill      ctermfg=NONE  ctermbg=0   cterm=none  guifg=NONE guibg=" . s:c0 . " gui=none"

exec "hi Pmenu            ctermfg=7   ctermbg=0     cterm=none  guifg=" . s:c7 . " guibg=" . s:c0 . " gui=none"
exec "hi PmenuSel         ctermfg=0   ctermbg=11    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent . " gui=bold"
exec "hi PmenuSbar        ctermfg=NONE  ctermbg=0   cterm=none  guifg=NONE guibg=" . s:c0 . " gui=none"
exec "hi PmenuThumb       ctermfg=NONE  ctermbg=8   cterm=none  guifg=NONE guibg=" . s:c8 . " gui=none"

exec "hi Visual           ctermfg=NONE  ctermbg=8   cterm=none  guifg=NONE guibg=" . s:accent2_dark . " gui=none"
exec "hi VisualNOS        ctermfg=NONE  ctermbg=8   cterm=none  guifg=NONE guibg=" . s:accent2_dark . " gui=none"

exec "hi Search           ctermfg=0   ctermbg=11    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent . " gui=bold"
exec "hi IncSearch        ctermfg=0   ctermbg=10    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent2 . " gui=bold"
exec "hi CurSearch        ctermfg=0   ctermbg=10    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent2 . " gui=bold"

exec "hi MatchParen       ctermfg=11  ctermbg=NONE  cterm=bold,underline  guifg=NONE guibg=" . s:accent_dark . " gui=bold"

exec "hi Directory        ctermfg=12  ctermbg=NONE  cterm=none  guifg=" . s:c12 . " guibg=NONE gui=none"
exec "hi Title            ctermfg=15  ctermbg=NONE  cterm=bold  guifg=" . s:fg . " guibg=NONE gui=bold"
exec "hi Question         ctermfg=10  ctermbg=NONE  cterm=none  guifg=" . s:c10 . " guibg=NONE gui=none"
exec "hi MoreMsg          ctermfg=10  ctermbg=NONE  cterm=none  guifg=" . s:c10 . " guibg=NONE gui=none"
exec "hi ModeMsg          ctermfg=15  ctermbg=NONE  cterm=bold  guifg=" . s:fg . " guibg=NONE gui=bold"
exec "hi WarningMsg       ctermfg=6   ctermbg=NONE  cterm=none  guifg=" . s:c6 . " guibg=NONE gui=none"
exec "hi ErrorMsg         ctermfg=9   ctermbg=NONE  cterm=bold  guifg=" . s:c9 . " guibg=NONE gui=bold"

exec "hi NonText          ctermfg=8   ctermbg=NONE  cterm=none  guifg=" . s:c8 . " guibg=NONE gui=none"
exec "hi SpecialKey       ctermfg=13  ctermbg=NONE  cterm=none  guifg=" . s:c13 . " guibg=NONE gui=none"
exec "hi EndOfBuffer      ctermfg=8   ctermbg=NONE  cterm=none  guifg=" . s:c8 . " guibg=NONE gui=none"

exec "hi Folded           ctermfg=8   ctermbg=0     cterm=none  guifg=" . s:c8 . " guibg=" . s:c0 . " gui=none"
exec "hi FoldColumn       ctermfg=8   ctermbg=NONE  cterm=none  guifg=" . s:c8 . " guibg=NONE gui=none"

exec "hi WildMenu         ctermfg=0   ctermbg=11    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent . " gui=bold"

exec "hi SpellBad         ctermfg=9   ctermbg=NONE  cterm=underline  guifg=" . s:c9 . " guibg=NONE gui=underline"
exec "hi SpellCap         ctermfg=11  ctermbg=NONE  cterm=underline  guifg=" . s:c11 . " guibg=NONE gui=underline"
exec "hi SpellRare        ctermfg=13  ctermbg=NONE  cterm=underline  guifg=" . s:c13 . " guibg=NONE gui=underline"
exec "hi SpellLocal       ctermfg=12  ctermbg=NONE  cterm=underline  guifg=" . s:c12 . " guibg=NONE gui=underline"

" Syntax

exec "hi Comment          ctermfg=6   cterm=italic  guifg=" . s:c8 . " gui=italic"

exec "hi Constant         ctermfg=13  cterm=none  guifg=" . s:accent . " gui=none"
exec "hi String           ctermfg=10  cterm=none  guifg=" . s:c10 . " gui=none"
exec "hi Character        ctermfg=10  cterm=none  guifg=" . s:c10 . " gui=none"
exec "hi Number           ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi Boolean          ctermfg=13  cterm=bold  guifg=" . s:c13 . " gui=bold"
exec "hi Float            ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"

exec "hi Identifier       ctermfg=15  cterm=none  guifg=" . s:fg . " gui=none"
exec "hi Function         ctermfg=12  cterm=none  guifg=" . s:c12 . " gui=none"

exec "hi Statement        ctermfg=11  cterm=bold  guifg=" . s:c11 . " gui=bold"
exec "hi Conditional      ctermfg=11  cterm=bold  guifg=" . s:c11 . " gui=bold"
exec "hi Repeat           ctermfg=11  cterm=bold  guifg=" . s:c11 . " gui=bold"
exec "hi Label            ctermfg=11  cterm=none  guifg=" . s:c11 . " gui=none"
exec "hi Operator         ctermfg=15  cterm=none  guifg=" . s:fg . " gui=none"
exec "hi Keyword          ctermfg=11  cterm=bold  guifg=" . s:c11 . " gui=bold"
exec "hi Exception        ctermfg=9   cterm=bold  guifg=" . s:c9 . " gui=bold"

exec "hi PreProc          ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi Include          ctermfg=11  cterm=bold  guifg=" . s:accent . " gui=bold"
exec "hi Define           ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi Macro            ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi PreCondit        ctermfg=13  cterm=bold  guifg=" . s:c13 . " gui=bold"

exec "hi Type             ctermfg=7   cterm=none  guifg=" . s:c7 . " gui=none"
exec "hi StorageClass     ctermfg=7   cterm=none  guifg=" . s:c7 . " gui=none"
exec "hi Structure        ctermfg=7   cterm=bold  guifg=" . s:c7 . " gui=bold"
exec "hi Typedef          ctermfg=7   cterm=none  guifg=" . s:c7 . " gui=none"

exec "hi Special          ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi SpecialChar      ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi Tag              ctermfg=13  cterm=none  guifg=" . s:c13 . " gui=none"
exec "hi Delimiter        ctermfg=15  cterm=none  guifg=" . s:fg . " gui=none"
exec "hi SpecialComment   ctermfg=6   cterm=italic  guifg=" . s:c6 . " gui=italic"
exec "hi Debug            ctermfg=9   cterm=none  guifg=" . s:c9 . " gui=none"

exec "hi Underlined       ctermfg=15  cterm=underline  guifg=" . s:fg . " gui=underline"
exec "hi Ignore           ctermfg=8   cterm=none  guifg=" . s:c8 . " gui=none"
exec "hi Error            ctermfg=9   ctermbg=NONE  cterm=bold  guifg=" . s:c9 . " guibg=NONE gui=bold"
exec "hi Todo             ctermfg=0   ctermbg=11    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent . " gui=bold"

exec "hi DiffAdd          ctermfg=10  ctermbg=NONE  cterm=none  guifg=" . s:c10 . " guibg=NONE gui=none"
exec "hi DiffDelete       ctermfg=9   ctermbg=NONE  cterm=none  guifg=" . s:c9 . " guibg=NONE gui=none"
exec "hi DiffChange       ctermfg=11  ctermbg=NONE  cterm=none  guifg=" . s:c11 . " guibg=NONE gui=none"
exec "hi DiffText         ctermfg=0   ctermbg=11    cterm=bold  guifg=" . s:bg . " guibg=" . s:accent2 . " gui=bold"

" C

hi link cFormat         SpecialChar
hi link cSpecial        SpecialChar

hi link cType           Type
hi link cStructure      Structure
hi link cStorageClass   StorageClass
hi link cInclude        Include
hi link cDefine         Define
hi link cPreCondit      PreCondit
hi link cMacro          Macro
hi link cConstant       Constant
hi link cOperator       Operator

" Haskell

hi link haskellType             Type
hi link haskellTypeOperators    Operator
hi link haskellConstructor      Constant
hi link haskellInfixOperator    Operator
hi link haskellOperators        Operator
hi link haskellDelimiter        Delimiter

hi link haskellKeyword          Keyword
hi link haskellWhere            Keyword
hi link haskellLet              Keyword
hi link haskellIn               Keyword
hi link haskellOf               Keyword
hi link haskellCase             Keyword
hi link haskellDo               Keyword
hi link haskellRecursiveDo      Keyword
hi link haskellDecl             Statement
hi link haskellClass            Statement
hi link haskellInstance         Statement

hi link haskellDeriving         PreProc
hi link haskellImport           Include
hi link haskellModule           PreProc
hi link haskellPragma           SpecialComment

hi link haskellNumber           Number
hi link haskellFloat            Float
hi link haskellChar             Character
hi link haskellString           String

hi link haskellIdentifier       Identifier
hi link haskellFunctionName     Function
hi link haskellTupleType        Type
hi link haskellQuasiQuote       Special
hi link haskellTH               Macro

" Fortran

hi link fortranType             Type
hi link fortranAttribute        StorageClass
hi link fortranTypeOb           Type
hi link fortranStructure        Structure

hi link fortranKeyword          Keyword
hi link fortranConditional      Conditional
hi link fortranRepeat           Repeat
hi link fortranIO               Statement
hi link fortranRead             Statement
hi link fortranWrite            Statement
hi link fortranPrint            Statement
hi link fortranOpen             Statement
hi link fortranClose            Statement

hi link fortranIntrinsic        Function
hi link fortranIntrinsicR       Function
hi link fortranMath             Function
hi link fortranMathOb           Function
hi link fortranStoreFcn         Function
hi link fortranSubroutine       Function
hi link fortranFunction         Function
hi link fortranUnitHeader       PreProc

hi link fortranOperator         Operator
hi link fortranBoolean          Boolean
hi link fortranNumber           Number
hi link fortranFloat            Float
hi link fortranComplex          Number
hi link fortranString           String
hi link fortranContinueMark     Special
hi link fortranLabelNumber      Special
hi link fortranComment          Comment
hi link fortranPreProc          PreProc
