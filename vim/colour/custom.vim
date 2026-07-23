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
set notermguicolors

" UI

hi Normal           ctermfg=15  ctermbg=NONE  cterm=none
hi NormalNC         ctermfg=8   ctermbg=NONE  cterm=none

hi CursorLine       ctermfg=NONE  ctermbg=0   cterm=none
hi CursorColumn     ctermfg=NONE  ctermbg=0   cterm=none
hi CursorLineNr     ctermfg=11  ctermbg=0     cterm=bold
hi LineNr           ctermfg=8   ctermbg=NONE  cterm=none
hi ColorColumn      ctermfg=NONE  ctermbg=0   cterm=none
hi SignColumn       ctermfg=8   ctermbg=NONE  cterm=none

hi TabLine          ctermfg=8   ctermbg=0     cterm=none
hi TabLineSel       ctermfg=15  ctermbg=0     cterm=bold
hi TabLineFill      ctermfg=NONE  ctermbg=0   cterm=none

hi Pmenu            ctermfg=7   ctermbg=0     cterm=none
hi PmenuSel         ctermfg=0   ctermbg=11    cterm=bold
hi PmenuSbar        ctermfg=NONE  ctermbg=0   cterm=none
hi PmenuThumb       ctermfg=NONE  ctermbg=8   cterm=none

hi Visual           ctermfg=NONE  ctermbg=8   cterm=none
hi VisualNOS        ctermfg=NONE  ctermbg=8   cterm=none

hi Search           ctermfg=0   ctermbg=11    cterm=bold
hi IncSearch        ctermfg=0   ctermbg=10    cterm=bold
hi CurSearch        ctermfg=0   ctermbg=10    cterm=bold

hi MatchParen       ctermfg=11  ctermbg=NONE  cterm=bold,underline

hi Directory        ctermfg=12  ctermbg=NONE  cterm=none
hi Title            ctermfg=15  ctermbg=NONE  cterm=bold
hi Question         ctermfg=10  ctermbg=NONE  cterm=none
hi MoreMsg          ctermfg=10  ctermbg=NONE  cterm=none
hi ModeMsg          ctermfg=15  ctermbg=NONE  cterm=bold
hi WarningMsg       ctermfg=6   ctermbg=NONE  cterm=none
hi ErrorMsg         ctermfg=9   ctermbg=NONE  cterm=bold

hi NonText          ctermfg=8   ctermbg=NONE  cterm=none
hi SpecialKey       ctermfg=13  ctermbg=NONE  cterm=none
hi EndOfBuffer      ctermfg=8   ctermbg=NONE  cterm=none

hi Folded           ctermfg=8   ctermbg=0     cterm=none
hi FoldColumn       ctermfg=8   ctermbg=NONE  cterm=none

hi WildMenu         ctermfg=0   ctermbg=11    cterm=bold

hi SpellBad         ctermfg=9   ctermbg=NONE  cterm=underline
hi SpellCap         ctermfg=11  ctermbg=NONE  cterm=underline
hi SpellRare        ctermfg=13  ctermbg=NONE  cterm=underline
hi SpellLocal       ctermfg=12  ctermbg=NONE  cterm=underline

" Syntax

hi Comment          ctermfg=6   cterm=italic

hi Constant         ctermfg=13  cterm=none
hi String           ctermfg=10  cterm=none
hi Character        ctermfg=10  cterm=none
hi Number           ctermfg=13  cterm=none
hi Boolean          ctermfg=13  cterm=bold
hi Float            ctermfg=13  cterm=none

hi Identifier       ctermfg=15  cterm=none
hi Function         ctermfg=12  cterm=none

hi Statement        ctermfg=11  cterm=bold
hi Conditional      ctermfg=11  cterm=bold
hi Repeat           ctermfg=11  cterm=bold
hi Label            ctermfg=11  cterm=none
hi Operator         ctermfg=15  cterm=none
hi Keyword          ctermfg=11  cterm=bold
hi Exception        ctermfg=9   cterm=bold

hi PreProc          ctermfg=13  cterm=none
hi Include          ctermfg=11  cterm=bold
hi Define           ctermfg=13  cterm=none
hi Macro            ctermfg=13  cterm=none
hi PreCondit        ctermfg=13  cterm=bold

hi Type             ctermfg=7   cterm=none
hi StorageClass     ctermfg=7   cterm=none
hi Structure        ctermfg=7   cterm=bold
hi Typedef          ctermfg=7   cterm=none

hi Special          ctermfg=13  cterm=none
hi SpecialChar      ctermfg=13  cterm=none
hi Tag              ctermfg=13  cterm=none
hi Delimiter        ctermfg=15  cterm=none
hi SpecialComment   ctermfg=6   cterm=italic
hi Debug            ctermfg=9   cterm=none

hi Underlined       ctermfg=15  cterm=underline
hi Ignore           ctermfg=8   cterm=none
hi Error            ctermfg=9   ctermbg=NONE  cterm=bold
hi Todo             ctermfg=0   ctermbg=11    cterm=bold

hi DiffAdd          ctermfg=10  ctermbg=NONE  cterm=none
hi DiffDelete       ctermfg=9   ctermbg=NONE  cterm=none
hi DiffChange       ctermfg=11  ctermbg=NONE  cterm=none
hi DiffText         ctermfg=0   ctermbg=11    cterm=bold

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
