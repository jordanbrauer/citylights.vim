"   _                       
"  / `._/_    /  ._  /__/_ _
" /_,/ / /_/ /_,//_// // _\ 
"        _/      _/         
"
" This project is a port of the Atom/Sublime/VSCode theme made by YummyGum. No
" changes or improvements will be made to respect the original project's
" license, and as such this project must adopt the same license (see below).
"
" The theme code itself is lifted from the nord.vim theme and repurposed. I
" chose to borrow from Nord given they have themes where City Lights does,
" making the port slightly easier.
"
" Project:    City Lights
" Maintainer: Jordan Brauer <18744334+jordanbrauer@users.noreply.github.com>
" Repository: https://github.com/jordanbrauer/citylights.vim
" Languages:  php
" License:    CC BY-NC-ND 4.0
" Original:   https://citylights.xyz/
"             https://github.com/arcticicestudio/nord-vim/blob/develop/colors/nord.vim
"

if version < 700
  finish
endif

highlight clear 

if exists("syntax_on") 
  syntax reset
endif

" =============================================================================
" Theme
" =============================================================================

set background=dark

let g:colors_name = 'citylights'
let s:bold        = 'bold,'
let s:italic      = 'italic,'
let s:underline   = 'underline,'
let s:none        = 'NONE'
let s:citylights  = {
  \ 'black':   { 'tui': '0', 'gui': '#1f252b' },
  \ 'white':   { 'tui': 7,   'gui': '#b7c5d3' },
  \ 'grey':    { 'tui': 238, 'gui': '#41505e' },
  \ 'red':     { 'tui': 1,   'gui': '#e27e8d' },
  \ 'green':   { 'tui': 23,  'gui': '#54af83' },
  \ 'blue':    { 'tui': 25,  'gui': '#68a1f0' },
  \ 'yellow':  { 'tui': 3,   'gui': '#ebda65' },
  \ 'success': { 'tui': 2,   'gui': '#54af83' },
  \ 'sage':    { 'tui': 23,  'gui': '#008b94' },
  \ 'steel':   { 'tui': 243, 'gui': '#718ca1' },
  \ 'teal':    { 'tui': 80,  'gui': '#70e1e8' },
  \ 'azure':   { 'tui': 39,  'gui': '#5ec4ff' },
  \ 'aqua':    { 'tui': 123, 'gui': '#9effff' },
  \ 'orange':  { 'tui': 215, 'gui': '#ebbf83' },
  \ 'brown':   { 'tui': 130, 'gui': '' },
  \ }

""+- Vim 8 Terminal Colors -+
"if has('terminal')
"  let g:terminal_ansi_colors = [s:nord1_gui, s:nord11_gui, s:nord14_gui, s:nord13_gui, s:nord9_gui, s:nord15_gui, s:nord8_gui, s:nord5_gui, s:nord3_gui, s:nord11_gui, s:nord14_gui, s:nord13_gui, s:nord9_gui, s:nord15_gui, s:nord7_gui, s:nord6_gui]
"endif

""+- Neovim Terminal Colors -+
"if has('nvim')
"  let g:terminal_color_0 = s:nord1_gui
"  let g:terminal_color_1 = s:nord11_gui
"  let g:terminal_color_2 = s:nord14_gui
"  let g:terminal_color_3 = s:nord13_gui
"  let g:terminal_color_4 = s:nord9_gui
"  let g:terminal_color_5 = s:nord15_gui
"  let g:terminal_color_6 = s:nord8_gui
"  let g:terminal_color_7 = s:nord5_gui
"  let g:terminal_color_8 = s:nord3_gui
"  let g:terminal_color_9 = s:nord11_gui
"  let g:terminal_color_10 = s:nord14_gui
"  let g:terminal_color_11 = s:nord13_gui
"  let g:terminal_color_12 = s:nord9_gui
"  let g:terminal_color_13 = s:nord15_gui
"  let g:terminal_color_14 = s:nord7_gui
"  let g:terminal_color_15 = s:nord6_gui
"endif

" =============================================================================
" Utility Functions
" =============================================================================

"
" Set a group highlight and stylings
"
" Param: string group
" Param: string guifg A hex code for a Vim GUI foreground colour
" Param: string guibg A hex code for a Vim GUI background colour
" Param: string ctermfg
" Param: string ctermbg
" Param: string attr
" Param: string guisp
"
function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif

  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif

  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif

  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif

  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, '')
  endif

  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

" =============================================================================
" Formatting
" =============================================================================

call s:hi("Bold",      '', '', '', '', s:bold,      '')
call s:hi("Italic",    '', '', '', '', s:italic,    '')
call s:hi("Underline", '', '', '', '', s:underline, '')

" =============================================================================
" Tokens
" =============================================================================

call s:hi('Comment',   s:citylights.grey.gui, s:none, s:citylights.grey.tui, s:none, '', '') 
call s:hi('Constant',  s:citylights.red.gui,  s:none, s:citylights.red.tui,  s:none, '', '')
call s:hi('String',    s:citylights.blue.gui, s:none, s:citylights.blue.tui, s:none, '', '')
call s:hi('Character', s:citylights.red.gui,  s:none, s:citylights.red.tui,  s:none, '', '')
call s:hi('Number',    s:citylights.red.gui,  s:none, s:citylights.red.tui,  s:none, '', '')
call s:hi('Boolean',   s:citylights.red.gui,  s:none, s:citylights.red.tui,  s:none, '', '')
call s:hi('Float',     s:citylights.red.gui,  s:none, s:citylights.red.tui,  s:none, '', '')

call s:hi('Identifier', s:citylights.orange.gui, s:none, s:citylights.orange.tui, '',     s:none, '')
call s:hi('Function',   s:citylights.teal.gui,   s:none, s:citylights.teal.tui,   s:none, '',     '')

call s:hi('Statement',   s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, s:none, '')
call s:hi('Conditional', s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '',     '')
call s:hi('Repeat',      s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '',     '')
call s:hi('Label',       s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '',     '')
call s:hi('Operator',    s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '',     '')
call s:hi('Keyword',     s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '',     '')
call s:hi('Exception',   s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '',     '')

call s:hi('PreProc',   s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '', '')
call s:hi('Include',   s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '', '')
call s:hi('Define',    s:citylights.sage.gui,  s:none, s:citylights.green.tui, s:none, '', '')
call s:hi('Macro',     s:citylights.sage.gui,  s:none, s:citylights.green.tui, s:none, '', '')
call s:hi('PreCondit', s:citylights.sage.gui,  s:none, s:citylights.green.tui, s:none, '', '')

call s:hi('Type',         s:citylights.sage.gui, s:none, s:citylights.green.tui, s:none, s:none, '')
call s:hi('StorageClass', s:citylights.sage.gui, s:none, s:citylights.green.tui, s:none, '',     '')
call s:hi('Structure',    s:citylights.sage.gui, s:none, s:citylights.green.tui, s:none, '',     '')
call s:hi('Typedef',      s:citylights.sage.gui, s:none, s:citylights.green.tui, s:none, '',     '')

call s:hi('Special',     s:citylights.steel.gui, s:none, s:citylights.steel.tui, s:none, '', '')
call s:hi('SpecialChar', s:citylights.red.tui,   s:none, s:citylights.red.tui,   s:none, '', '')
" call s:hi('Tag', s:none, s:none, s:none, s:none, s:citylights.red.tui)
" call s:hi('Delimiter', s:none, s:none, s:none, s:none, s:citylights.red.tui)
" call s:hi('SpecialComment', s:none, s:none, s:none, s:none, s:citylights.red.tui)
" call s:hi('Debug', s:none, s:none, s:none, s:none, s:citylights.red.tui)
call s:hi('Todo',        s:citylights.azure.gui, s:none, s:citylights.azure.tui, s:none, '', '')

" =============================================================================
" NeoVim
" =============================================================================

call s:hi("healthError",   s:citylights.red.gui,    '',                     s:citylights.red.tui,    s:citylights.black.tui, '', '')
call s:hi("healthSuccess", s:citylights.green.gui,  '',                     s:citylights.green.tui,  s:citylights.black.tui, '', '')
call s:hi("healthWarning", s:citylights.yellow.gui, '',                     s:citylights.yellow.tui, s:citylights.black.tui, '', '')
call s:hi("TermCursorNC",  '',                      s:citylights.black.gui, '',                      s:citylights.black.tui, '', '')

" =============================================================================
" Window
" =============================================================================

call s:hi("Title",       '',                      '',                     "NONE",                  '',                     "NONE",      '')
call s:hi("VertSplit",   s:citylights.grey.gui,   s:none,                 s:citylights.grey.tui,   "NONE",                 "NONE",      '')
call s:hi("ColorColumn", s:none,                  '#242b33',              s:none,                  s:citylights.grey.tui, '',          '')
call s:hi("Cursor",      '',                      s:none,                 '',                      s:none,                 '',          '')
call s:hi("CursorLine",  s:none,                  s:citylights.grey.gui,  "NONE",                  s:citylights.grey.tui,  "NONE",      '')
call s:hi("Error",       '',                      s:citylights.red.gui,   '',                      s:citylights.red.tui,   '',          '')
call s:hi("iCursor",     '',                      s:none,                 '',                      "NONE",                 '',          '')
call s:hi("MatchParen",  s:none,                  s:citylights.white.gui, s:none,                  s:citylights.white.tui, '',          '')
call s:hi("NonText",     s:citylights.black.gui,  '',                     s:citylights.black.tui,  '',                     '',          '')
call s:hi("Normal",      s:none,                  s:none,                 "NONE",                  "NONE",                 '',          '')
call s:hi("Pmenu",       s:none,                  '#333F49',              "NONE",                  s:citylights.black.tui, "NONE",      '')
call s:hi("PmenuSbar",   s:none,                  s:citylights.black.gui, "NONE",                  s:citylights.black.tui, '',          '')
call s:hi("PmenuSel",    s:citylights.black.gui,  s:citylights.blue.gui,  s:citylights.black.tui,  s:citylights.blue.tui,  '',          '')
call s:hi("PmenuThumb",  s:none,                  s:citylights.white.gui, s:none,                  s:citylights.white.tui, '',          '')
call s:hi("SpecialKey",  s:citylights.white.gui,  '',                     s:citylights.white.tui,  '',                     '',          '')
call s:hi("SpellBad",    s:citylights.red.gui,    s:none,                 s:citylights.red.tui,    "NONE",                 "undercurl", '')
call s:hi("SpellCap",    s:citylights.yellow.gui, s:none,                 s:citylights.yellow.tui, "NONE",                 "undercurl", '')
call s:hi("SpellLocal",  s:citylights.white.gui,  s:none,                 s:citylights.white.tui,  "NONE",                 "undercurl", '')
call s:hi("SpellRare",   s:citylights.blue.gui,   s:none,                 s:citylights.blue.tui,   s:none,                 "undercurl", '')
call s:hi("Visual",      '',                      '',                     '',                      237,                    '',          '')
call s:hi("VisualNOS",   '',                      '',                     '',                      237,                    '',          '')
call s:hi("Directory",   s:citylights.steel.gui,  '',                     s:citylights.steel.tui,  "NONE",                 '',          '')
call s:hi("EndOfBuffer", s:citylights.grey.gui,   s:none,                 s:citylights.grey.tui,   "NONE",                 '',          '')

" call s:hi("IncSearch", s:nord6_gui, s:nord10_gui, s:nord6_term, s:nord10_term, s:underline, '')
" call s:hi("Search", s:nord1_gui, s:nord8_gui, s:nord1_term, s:nord8_term, "NONE", '')

" call s:hi("TabLine", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", '')
" call s:hi("TabLineFill", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", '')
" call s:hi("TabLineSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", '')

" =============================================================================
" Prompt
" =============================================================================

call s:hi("ErrorMsg",    s:none,                 s:citylights.red.gui,   "NONE",                 s:citylights.red.tui, '', '')
call s:hi("ModeMsg",     '',                     '',                     '',                     '',                   '', '')
call s:hi("MoreMsg",     s:citylights.white.gui, '',                     s:citylights.white.tui, '',                   '', '')
call s:hi("Question",    s:none,                 '',                     "NONE",                 '',                   '', '')
" call s:hi("WarningMsg", s:nord0_gui, s:nord13_gui, s:nord1_term, s:nord13_term, '',g '')
" call s:hi("WildMenu", s:nord8_gui, s:nord1_gui, s:nord8_term, s:nord1_term, '', '')

" =============================================================================
" Status Line
" =============================================================================

call s:hi("StatusLine",       s:citylights.white.gui, s:citylights.black.tui, s:citylights.white.tui, s:citylights.black.tui, "NONE", '')
call s:hi("StatusLineNC",     s:none,                 s:citylights.black.gui, "NONE",                 s:citylights.black.tui, "NONE", '')
call s:hi("StatusLineTerm",   s:citylights.white.gui, s:citylights.black.gui, s:citylights.white.tui, s:citylights.black.tui, "NONE", '')
call s:hi("StatusLineTermNC", s:none,                 s:citylights.black.gui, "NONE",                 s:citylights.black.tui, "NONE", '')

" =============================================================================
" Gutter
" =============================================================================
"
" Plugin: airblade/vim-gitgutter

call s:hi("CursorColumn", s:none,                 s:citylights.black.gui, s:none,                 s:citylights.black.tui, '',     '')
call s:hi("CursorLineNr", s:citylights.white.gui, s:none,                 s:citylights.white.tui, s:none,                 "NONE", '')
call s:hi("LineNr",       s:citylights.grey.gui,  s:none,                 s:citylights.grey.tui,  s:none,                 "NONE", '')
call s:hi("SignColumn",   s:none,                 s:citylights.black.gui, s:none,                 s:citylights.black.tui, '',     '')
call s:hi('Folded',       s:citylights.steel.gui, s:none,                 s:citylights.steel.tui, s:none,                 s:bold, '')
call s:hi('FoldColumn',   s:citylights.steel.gui, s:none,                 s:citylights.steel.tui, s:none,                 s:bold, '')

call s:hi("GitGutterAdd",          s:citylights.green.gui,  '', s:citylights.success.tui, '', s:bold, '')
call s:hi("GitGutterChange",       s:citylights.yellow.gui, '', s:citylights.yellow.tui,  '', s:bold, '')
call s:hi("GitGutterChangeDelete", s:citylights.red.gui,    '', s:citylights.red.tui,     '', s:bold, '')
call s:hi("GitGutterDelete",       s:citylights.red.gui,    '', s:citylights.red.tui,     '', s:bold, '')

" =============================================================================
" LSP
" =============================================================================
"
" Plugin: neovim/nvim-lspconfig

call s:hi("LspDiagnosticsDefaultWarning",       s:citylights.yellow.gui, '', s:citylights.yellow.tui, '', '',          '')
call s:hi("LspDiagnosticsDefaultError",         s:citylights.red.gui,    '', s:citylights.red.tui,    '', '',          '')
call s:hi("LspDiagnosticsDefaultInformation",   s:citylights.blue.gui,   '', s:citylights.blue.tui,   '', '',          '')
call s:hi("LspDiagnosticsDefaultHint",          s:citylights.white.gui,  '', s:citylights.white.tui,  '', '',          '')
call s:hi("LspDiagnosticsUnderlineWarning",     s:citylights.yellow.gui, '', s:citylights.yellow.tui, '', "undercurl", '')
call s:hi("LspDiagnosticsUnderlineError",       s:citylights.red.gui,    '', s:citylights.red.tui,    '', "undercurl", '')
call s:hi("LspDiagnosticsUnderlineInformation", s:citylights.blue.gui,   '', s:citylights.blue.tui,   '', "undercurl", '')
call s:hi("LspDiagnosticsUnderlineHint",        s:citylights.white.gui,  '', s:citylights.white.tui,  '', "undercurl", '')

" =============================================================================
" Git
" =============================================================================
"
" Plugin: tpope/vim-fugitive

call s:hi("gitcommitDiscardedFile", s:citylights.red.gui,   '', s:citylights.red.tui,     '', '', '')
call s:hi("gitcommitUntrackedFile", s:citylights.green.gui, '', s:citylights.success.tui, '', '', '')
call s:hi("gitcommitSelectedFile",  s:citylights.blue.gui,  '', s:citylights.blue.tui,    '', '', '')

" =============================================================================
" HTML
" =============================================================================

hi! link htmlTag Special
hi! link htmlEndTag htmlTag
hi! link htmlTagName Define
hi! link htmlArg Function

" =============================================================================
" PHP
" =============================================================================
"
" Plugin: jordanbrauer/php.vim

call s:hi('phpVarSelector', s:citylights.orange.gui, s:none, s:citylights.brown.tui, s:none, '', '')
call s:hi('phpClasses',     s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')
call s:hi('phpFunction',    s:citylights.aqua.gui,   s:none, s:citylights.aqua.tui,  s:none, '', '')
call s:hi('phpRegion',      s:citylights.aqua.gui,   s:none, s:citylights.aqua.tui,  s:none, '', '')
call s:hi('phpParent',      s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')
call s:hi('phpUseClass',    s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')
call s:hi('phpMethodsVar',  s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')

hi! link phpUseKeyword Keyword
hi! link phpDocTags Keyword
hi! link phpDocParam Type
hi! link phpNullValue Constant
hi! link phpDocIdentifier Identifier
hi! link phpMethod phpFunction
hi! link phpUseFunction phpUseClass
hi! link phpUseNamespaceSeparator phpUseClass

hi! link phpFunc Define
hi! link phpDeclareDirectives Constant

" =============================================================================
" JavaScript
" =============================================================================

call s:hi('javascriptIdentifierName',  s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')
call s:hi('javascriptObjectLabel',     s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')
call s:hi('javascriptParens',          s:citylights.steel.gui,  s:none, s:citylights.steel.tui, s:none, '', '')

hi! link javascriptComma javascriptParens
hi! link javascriptEndColons javascriptParens
hi! link javascriptBrackets javascriptParens
hi! link javascriptBlock javascriptParens
hi! link javascriptDotNotation javascriptParens
hi! link javascriptAsyncFuncKeyword Define
hi! link javascriptBraces javascriptParens
hi! link javascriptOpSymbol Keyword
hi! link javascriptOpSymbols Keyword
hi! link javascriptObjectLabelColon Keyword
hi! link javascriptFuncArg Identifier
hi! link javascriptVariable Define
hi! link javascriptFuncKeyword Define

" =============================================================================
" JSX
" =============================================================================

call s:hi('jsxAttrib', s:citylights.aqua.gui,  s:none, s:citylights.aqua.tui, s:none, '', '')

hi! link jsxExpressionBlock javascriptBlock
hi! link jsxTagName Define
