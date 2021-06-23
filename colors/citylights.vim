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
" Maintainer: Jordan Brauer <>
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
  \ 'black':  '0',
  \ 'white':  7,
  \ 'red':    1,
  \ 'blue':   25,
  \ 'green':  23,
  \ 'yellow': 3,
  \ 'grey':   235,
  \ 'steel':  243,
  \ 'teal':   80,
  \ 'azure':  39,
  \ 'aqua':   123,
  \ 'orange': 215,
  \ 'brown':  130,
  \ 'success': 2
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
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif

  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

" =============================================================================
" Formatting
" =============================================================================

call s:hi("Bold",      "", "", "", "", s:bold,      "")
call s:hi("Italic",    "", "", "", "", s:italic,    "")
call s:hi("Underline", "", "", "", "", s:underline, "")

" =============================================================================
" Tokens
" =============================================================================

call s:hi('Comment', s:none, s:none, s:citylights.grey, s:none, '', '')
 
call s:hi('Constant',  s:none, s:none, s:citylights.red,  s:none, '', '')
call s:hi('String',    s:none, s:none, s:citylights.blue, s:none, '', '')
call s:hi('Character', s:none, s:none, s:citylights.red,  s:none, '', '')
call s:hi('Number',    s:none, s:none, s:citylights.red,  s:none, '', '')
call s:hi('Boolean',   s:none, s:none, s:citylights.red,  s:none, '', '')
call s:hi('Float',     s:none, s:none, s:citylights.red,  s:none, '', '')

call s:hi('Identifier', s:none, s:none, s:citylights.orange, '',     s:none, '')
call s:hi('Function',   s:none, s:none, s:citylights.teal,   s:none, '',     '')

call s:hi('Statement',   s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Conditional', s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Repeat',      s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Label',       s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Operator',    s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Keyword',     s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Exception',   s:none, s:none, s:citylights.azure, s:none, '', '')

call s:hi('PreProc',   s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Include',   s:none, s:none, s:citylights.azure, s:none, '', '')
call s:hi('Define',    s:none, s:none, s:citylights.green, s:none, '', '')
call s:hi('Macro',     s:none, s:none, s:citylights.green, s:none, '', '')
call s:hi('PreCondit', s:none, s:none, s:citylights.green, s:none, '', '')

call s:hi('Type',         s:none, s:none, s:citylights.green, s:none, '', '')
call s:hi('StorageClass', s:none, s:none, s:citylights.green, s:none, '', '')
call s:hi('Structure',    s:none, s:none, s:citylights.green, s:none, '', '')
call s:hi('Typedef',      s:none, s:none, s:citylights.green, s:none, '', '')

call s:hi('Special',     s:none, s:none, s:citylights.red, s:none, '', '')
call s:hi('SpecialChar', s:none, s:none, s:citylights.red, s:none, '', '')
" call s:hi('Tag', s:none, s:none, s:none, s:none, s:citylights.red)
" call s:hi('Delimiter', s:none, s:none, s:none, s:none, s:citylights.red)
" call s:hi('SpecialComment', s:none, s:none, s:none, s:none, s:citylights.red)
" call s:hi('Debug', s:none, s:none, s:none, s:none, s:citylights.red)

" =============================================================================
" NeoVim
" =============================================================================

call s:hi("healthError",   '', '', s:citylights.red,    s:citylights.black, "", "")
call s:hi("healthSuccess", '', '', s:citylights.green,  s:citylights.black, "", "")
call s:hi("healthWarning", '', '', s:citylights.yellow, s:citylights.black, "", "")
call s:hi("TermCursorNC",  "", '', "",                  s:citylights.black, "", "")

" =============================================================================
" Window
" =============================================================================

call s:hi("Title",       '', "", "NONE",               "",                 "NONE",      "")
call s:hi("VertSplit",   '', '', s:citylights.grey,    "NONE",             "NONE",      "")
call s:hi("ColorColumn", "", '', "NONE",               s:citylights.steel, "",          "")
call s:hi("Cursor",      '', '', "",                   "NONE",             "",          "")
call s:hi("CursorLine",  "", '', "NONE",               s:citylights.grey,  "NONE",      "")
call s:hi("Error",       '', '', "",                   s:citylights.red,   "",          "")
call s:hi("iCursor",     '', '', "",                   "NONE",             "",          "")
call s:hi("MatchParen",  '', '', s:citylights.success, s:none,             "",          "")
call s:hi("NonText",     '', "", s:citylights.black,   "",                 "",          "")
call s:hi("Normal",      '', '', "NONE",               "NONE",             "",          "")
call s:hi("Pmenu",       '', '', "NONE",               s:citylights.black, "NONE",      "")
call s:hi("PmenuSbar",   '', '', "NONE",               s:citylights.black, "",          "")
call s:hi("PmenuSel",    '', '', s:citylights.black,   s:citylights.blue,  "",          "")
call s:hi("PmenuThumb",  '', '', "NONE",               8,                  "",          "")
call s:hi("SpecialKey",  '', '', 8,                    "",                 "",          "")
call s:hi("SpellBad",    '', '', s:citylights.red,     "NONE",             "undercurl", '')
call s:hi("SpellCap",    '', '', s:citylights.yellow,  "NONE",             "undercurl", '')
call s:hi("SpellLocal",  '', '', s:citylights.white,   "NONE",             "undercurl", '')
call s:hi("SpellRare",   '', '', 15,                   "NONE",             "undercurl", '')
call s:hi("Visual",      "", '', "",                   237,                "",          "")
call s:hi("VisualNOS",   "", '', "",                   237,                "",          "")
call s:hi("Directory",   '', "", s:citylights.teal,    "NONE",             "",          "")

" call s:hi("IncSearch", s:nord6_gui, s:nord10_gui, s:nord6_term, s:nord10_term, s:underline, "")
" call s:hi("Search", s:nord1_gui, s:nord8_gui, s:nord1_term, s:nord8_term, "NONE", "")

" call s:hi("TabLine", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
" call s:hi("TabLineFill", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
" call s:hi("TabLineSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")

" =============================================================================
" Prompt
" =============================================================================

call s:hi("EndOfBuffer", '', "", s:citylights.white, "NONE",           "", "")
call s:hi("ErrorMsg",    '', '', "NONE",             s:citylights.red, "", "")
call s:hi("ModeMsg",     '', "", "",                 "",               "", "")
call s:hi("MoreMsg",     '', "", s:citylights.white, "",               "", "")
call s:hi("Question",    '', "", "NONE",             "",               "", "")
" call s:hi("WarningMsg", s:nord0_gui, s:nord13_gui, s:nord1_term, s:nord13_term, "",g "")
" call s:hi("WildMenu", s:nord8_gui, s:nord1_gui, s:nord8_term, s:nord1_term, "", "")

" =============================================================================
" Status Line
" =============================================================================

call s:hi("StatusLine",       '', '', s:citylights.white, s:citylights.black, "NONE", "")
call s:hi("StatusLineNC",     '', '', "NONE",             s:citylights.black, "NONE", "")
call s:hi("StatusLineTerm",   '', '', s:citylights.white, s:citylights.black, "NONE", "")
call s:hi("StatusLineTermNC", '', '', "NONE",             s:citylights.black, "NONE", "")

" =============================================================================
" Gutter
" =============================================================================

call s:hi("CursorColumn", "", "", "NONE",             s:citylights.black, "",     "")
call s:hi("CursorLineNr", '', "", s:citylights.white, s:none,             "NONE", "")
call s:hi("LineNr",       '', "", s:citylights.grey,  s:none,             "NONE", "")
call s:hi("SignColumn",   '', '', s:none,             s:citylights.black, "",     "")
" call s:hi('Folded', s:nord3_gui, s:nord1_gui, s:nord3_term, s:nord1_term, s:bold, '')
" call s:hi('FoldColumn', s:nord3_gui, s:nord0_gui, s:nord3_term, s:none, '', '')

" airblade/vim-gitgutter
call s:hi("GitGutterAdd",          '', "", s:citylights.success, "", "", "")
call s:hi("GitGutterChange",       '', "", s:citylights.yellow,  "", "", "")
call s:hi("GitGutterChangeDelete", '', "", s:citylights.blue,    "", "", "")
call s:hi("GitGutterDelete",       '', "", s:citylights.red,     "", "", "")

" =============================================================================
" LSP
" =============================================================================
"
" Plugin: neovim/nvim-lspconfig

call s:hi("LspDiagnosticsDefaultWarning",       '', "", s:citylights.yellow, "", "",          "")
call s:hi("LspDiagnosticsDefaultError",         '', "", s:citylights.red,    "", "",          "")
call s:hi("LspDiagnosticsDefaultInformation",   '', "", s:citylights.blue,   "", "",          "")
call s:hi("LspDiagnosticsDefaultHint",          '', "", s:citylights.white,  "", "",          "")
call s:hi("LspDiagnosticsUnderlineWarning",     '', "", s:citylights.yellow, "", "undercurl", "")
call s:hi("LspDiagnosticsUnderlineError",       '', "", s:citylights.red,    "", "undercurl", "")
call s:hi("LspDiagnosticsUnderlineInformation", '', "", s:citylights.blue,   "", "undercurl", "")
call s:hi("LspDiagnosticsUnderlineHint",        '', "", s:citylights.white,  "", "undercurl", "")

" =============================================================================
" Git
" =============================================================================
"
" Plugin: tpope/vim-fugitive

call s:hi("gitcommitDiscardedFile", '', "", s:citylights.red,     "", "", "")
call s:hi("gitcommitUntrackedFile", '', "", s:citylights.success, "", "", "")
call s:hi("gitcommitSelectedFile",  '', "", s:citylights.blue,    "", "", "")

" =============================================================================
" PHP
" =============================================================================
"
" Plugin: StanAngeloff/php.vim

call s:hi('phpVarSelector', s:none, s:none, s:citylights.brown, s:none, '', '')
call s:hi('phpClasses',     s:none, s:none, s:citylights.steel, s:none, '', '')
call s:hi('phpFunction',    s:none, s:none, s:citylights.aqua,  s:none, '', '')
call s:hi('phpRegion',      s:none, s:none, s:citylights.aqua,  s:none, '', '')
call s:hi('phpParent',      s:none, s:none, s:citylights.steel, s:none, '', '')
call s:hi('phpUseClass',    s:none, s:none, s:citylights.steel, s:none, '', '')

hi! link phpUseFunction phpUseClass
hi! link phpNullValue Constant
hi! link phpMethod phpFunction
hi! link phpDocTags phpKeyword
hi! link phpDocParam Type
hi! link phpDocIdentifier Identifier

call s:hi('phpFunc', '', '', s:citylights.green, s:none, '', '')
hi! link phpDeclarations Constant
