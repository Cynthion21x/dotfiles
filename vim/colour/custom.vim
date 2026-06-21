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

" UI

hi Normal           guifg=#aaaaaa  guibg=#000000  ctermfg=7    ctermbg=0   gui=none      cterm=none
hi NormalNC         guifg=#555555  guibg=#000000  ctermfg=8    ctermbg=0   gui=none      cterm=none

hi CursorLine       guifg=NONE     guibg=#111111  ctermfg=NONE ctermbg=0   gui=none      cterm=underline
hi CursorColumn     guifg=NONE     guibg=#111111  ctermfg=NONE ctermbg=0   gui=none      cterm=none
hi CursorLineNr     guifg=#00ff8c  guibg=#000000  ctermfg=10   ctermbg=0   gui=bold      cterm=bold
hi LineNr           guifg=#555555  guibg=#000000  ctermfg=8    ctermbg=0   gui=none      cterm=none
hi ColorColumn      guifg=NONE     guibg=#111111  ctermfg=NONE ctermbg=0   gui=none      cterm=none
hi SignColumn       guifg=#555555  guibg=#000000  ctermfg=8    ctermbg=0   gui=none      cterm=none

hi TabLine          guifg=#555555  guibg=#000000  ctermfg=8    ctermbg=0   gui=none      cterm=none
hi TabLineSel       guifg=#ffffff  guibg=#000000  ctermfg=15   ctermbg=0   gui=bold      cterm=bold
hi TabLineFill      guifg=NONE     guibg=#000000  ctermfg=NONE ctermbg=0   gui=none      cterm=none

hi Pmenu            guifg=#aaaaaa  guibg=#111111  ctermfg=7    ctermbg=8   gui=none      cterm=none
hi PmenuSel         guifg=#000000  guibg=#00ff8c  ctermfg=0    ctermbg=10  gui=bold      cterm=bold
hi PmenuSbar        guifg=NONE     guibg=#111111  ctermfg=NONE ctermbg=8   gui=none      cterm=none
hi PmenuThumb       guifg=NONE     guibg=#555555  ctermfg=NONE ctermbg=8   gui=none      cterm=none

hi Visual           guifg=NONE     guibg=#1a1a1a  ctermfg=NONE ctermbg=8   gui=none      cterm=reverse
hi VisualNOS        guifg=NONE     guibg=#1a1a1a  ctermfg=NONE ctermbg=8   gui=none      cterm=reverse

hi Search           guifg=#000000  guibg=#ffff55  ctermfg=0    ctermbg=11  gui=bold      cterm=bold
hi IncSearch        guifg=#000000  guibg=#00ff8c  ctermfg=0    ctermbg=10  gui=bold      cterm=bold
hi CurSearch        guifg=#000000  guibg=#00ff8c  ctermfg=0    ctermbg=10  gui=bold      cterm=bold

hi MatchParen       guifg=#00ff8c  guibg=NONE     ctermfg=10   ctermbg=NONE gui=bold,underline cterm=bold,underline

hi Directory        guifg=#00c3ff  guibg=NONE     ctermfg=6    ctermbg=NONE gui=none      cterm=none
hi Title            guifg=#ffffff  guibg=NONE     ctermfg=15   ctermbg=NONE gui=bold      cterm=bold
hi Question         guifg=#00ff00  guibg=NONE     ctermfg=2    ctermbg=NONE gui=none      cterm=none
hi MoreMsg          guifg=#00ff00  guibg=NONE     ctermfg=2    ctermbg=NONE gui=none      cterm=none
hi ModeMsg          guifg=#ffffff  guibg=NONE     ctermfg=15   ctermbg=NONE gui=bold      cterm=bold
hi WarningMsg       guifg=#ffff55  guibg=NONE     ctermfg=11   ctermbg=NONE gui=none      cterm=none
hi ErrorMsg         guifg=#ff5555  guibg=NONE     ctermfg=9    ctermbg=NONE gui=bold      cterm=bold

hi NonText          guifg=#555555  guibg=NONE     ctermfg=8    ctermbg=NONE gui=none      cterm=none
hi SpecialKey       guifg=#55ffff  guibg=NONE     ctermfg=14   ctermbg=NONE gui=none      cterm=none
hi EndOfBuffer      guifg=#555555  guibg=NONE     ctermfg=8    ctermbg=NONE gui=none      cterm=none

hi Folded           guifg=#555555  guibg=#000000  ctermfg=8    ctermbg=0   gui=italic    cterm=none
hi FoldColumn       guifg=#555555  guibg=#000000  ctermfg=8    ctermbg=0   gui=none      cterm=none

hi WildMenu         guifg=#000000  guibg=#00ff8c  ctermfg=0    ctermbg=10  gui=bold      cterm=bold

hi SpellBad         guifg=NONE     guibg=NONE     gui=undercurl guisp=#ff5555  cterm=underline
hi SpellCap         guifg=NONE     guibg=NONE     gui=undercurl guisp=#ffff55  cterm=underline
hi SpellRare        guifg=NONE     guibg=NONE     gui=undercurl guisp=#55ffff  cterm=underline
hi SpellLocal       guifg=NONE     guibg=NONE     gui=undercurl guisp=#00c3ff  cterm=underline

" Syntax

hi Comment          guifg=#555555  ctermfg=8   gui=italic  cterm=none

hi Constant         guifg=#ffff55  ctermfg=11  gui=none    cterm=none
hi String           guifg=#ffff55  ctermfg=11  gui=none    cterm=none
hi Character        guifg=#ffff55  ctermfg=11  gui=none    cterm=none
hi Number           guifg=#ffff55  ctermfg=11  gui=none    cterm=none
hi Boolean          guifg=#ffff55  ctermfg=11  gui=bold    cterm=bold
hi Float            guifg=#ffff55  ctermfg=11  gui=none    cterm=none

hi Identifier       guifg=#aaaaaa  ctermfg=7   gui=none    cterm=none
hi Function         guifg=#00ff8c  ctermfg=10  gui=none    cterm=none

hi Statement        guifg=#00ff00  ctermfg=2   gui=bold    cterm=bold
hi Conditional      guifg=#00ff00  ctermfg=2   gui=bold    cterm=bold
hi Repeat           guifg=#00ff00  ctermfg=2   gui=bold    cterm=bold
hi Label            guifg=#00ff00  ctermfg=2   gui=none    cterm=none
hi Operator         guifg=#aaaaaa  ctermfg=7   gui=none    cterm=none
hi Keyword          guifg=#00ff00  ctermfg=2   gui=bold    cterm=bold
hi Exception        guifg=#ff5555  ctermfg=9   gui=bold    cterm=bold

hi PreProc          guifg=#ff55ff  ctermfg=13  gui=none    cterm=none
hi Include          guifg=#ff55ff  ctermfg=13  gui=none    cterm=none
hi Define           guifg=#ff55ff  ctermfg=13  gui=none    cterm=none
hi Macro            guifg=#ff55ff  ctermfg=13  gui=none    cterm=none
hi PreCondit        guifg=#ff55ff  ctermfg=13  gui=bold    cterm=bold

hi Type             guifg=#00c3ff  ctermfg=6   gui=none    cterm=none
hi StorageClass     guifg=#00c3ff  ctermfg=6   gui=none    cterm=none
hi Structure        guifg=#00c3ff  ctermfg=6   gui=bold    cterm=bold
hi Typedef          guifg=#00c3ff  ctermfg=6   gui=none    cterm=none

hi Special          guifg=#55ffff  ctermfg=14  gui=none    cterm=none
hi SpecialChar      guifg=#55ffff  ctermfg=14  gui=none    cterm=none
hi Tag              guifg=#55ffff  ctermfg=14  gui=none    cterm=none
hi Delimiter        guifg=#aaaaaa  ctermfg=7   gui=none    cterm=none
hi SpecialComment   guifg=#555555  ctermfg=8   gui=italic  cterm=none
hi Debug            guifg=#ff5555  ctermfg=9   gui=none    cterm=none

hi Underlined       guifg=#aaaaaa  ctermfg=7   gui=underline cterm=underline
hi Ignore           guifg=#555555  ctermfg=8   gui=none    cterm=none
hi Error            guifg=#ff5555  guibg=NONE  ctermfg=9   gui=bold    cterm=bold
hi Todo             guifg=#000000  guibg=#ffff55 ctermfg=0 ctermbg=11  gui=bold  cterm=bold


hi DiffAdd          guifg=#00ff8c  guibg=NONE  ctermfg=10  ctermbg=NONE  gui=none  cterm=none
hi DiffDelete       guifg=#ff5555  guibg=NONE  ctermfg=9   ctermbg=NONE  gui=none  cterm=none
hi DiffChange       guifg=#ffff55  guibg=NONE  ctermfg=11  ctermbg=NONE  gui=none  cterm=none
hi DiffText         guifg=#000000  guibg=#ffff55 ctermfg=0 ctermbg=11    gui=bold  cterm=bold

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
hi link fortranInclude          Include
