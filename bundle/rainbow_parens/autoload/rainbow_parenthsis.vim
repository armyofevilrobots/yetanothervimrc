"------------------------------------------------------------------------------
"  Description: Rainbow colors for parenthsis
"          $Id: rainbow_parenthsis.vim 50 2007-10-08 18:42:51Z krischik@users.sourceforge.net $
"    Copyright: Copyright (C) 2007 Martin Krischik
"   Maintainer: Martin Krischik (krischik@users.sourceforge.net)
"               John Gilmore
"               Luc Hermitte (hermitte@free.fr)
"      $Author: krischik@users.sourceforge.net $
"        $Date: 2007-10-08 20:42:51 +0200 (Mo, 08 Okt 2007) $
"      Version: 4.0
"    $Revision: 50 $
"     $HeadURL: https://vim-scripts.googlecode.com/svn/trunk/1561%20Rainbow%20Parenthsis%20Bundle/autoload/rainbow_parenthsis.vim $
"      History: 24.05.2006 MK Unified Headers
"               15.10.2006 MK Bram's suggestion for runtime integration
"               06.09.2007 LH Buffer friendly (can be used in different buffers),
"                             can be toggled
"               09.09.2007 MK Use on LH's suggestion but use autoload to
"                             impove memory consumtion and startup performance
"               09.10.2007 MK Now with round, square brackets, curly and angle
"                             brackets.
"        Usage: copy to autoload directory.
"------------------------------------------------------------------------------
" This is a simple script. It extends the syntax highlighting to
" highlight each matching set of parens in different colors, to make
" it visually obvious what matches which.
"
" Obviously, most useful when working with lisp or Ada. But it's also nice other
" times.
"------------------------------------------------------------------------------

" Section: highlight {{{1

function rainbow_parenthsis#Activate()
    highlight default level1c  ctermfg=brown        guifg=RoyalBlue3
    highlight default level2c  ctermfg=Darkblue     guifg=SeaGreen3
    highlight default level3c  ctermfg=darkgray     guifg=DarkOrchid3
    highlight default level4c  ctermfg=darkgreen    guifg=firebrick3
    highlight default level5c  ctermfg=darkcyan     guifg=RoyalBlue3
    highlight default level6c  ctermfg=darkred      guifg=SeaGreen3
    highlight default level7c  ctermfg=darkmagenta  guifg=DarkOrchid3
    highlight default level8c  ctermfg=brown        guifg=firebrick3
    highlight default level9c  ctermfg=gray         guifg=RoyalBlue3
    highlight default level10c ctermfg=black        guifg=SeaGreen3
    highlight default level11c ctermfg=darkmagenta  guifg=DarkOrchid3
    highlight default level12c ctermfg=Darkblue     guifg=firebrick3
    highlight default level13c ctermfg=darkgreen    guifg=RoyalBlue3
    highlight default level14c ctermfg=darkcyan     guifg=SeaGreen3
    highlight default level15c ctermfg=darkred      guifg=DarkOrchid3
    highlight default level16c ctermfg=red          guifg=firebrick3
    highlight default levelR1c  ctermfg=brown        guifg=RoyalBlue3
    highlight default levelR2c  ctermfg=Darkblue     guifg=SeaGreen3
    highlight default levelR3c  ctermfg=darkgray     guifg=DarkOrchid3
    highlight default levelR4c  ctermfg=darkgreen    guifg=firebrick3
    highlight default levelR5c  ctermfg=darkcyan     guifg=RoyalBlue3
    highlight default levelR6c  ctermfg=darkred      guifg=SeaGreen3
    highlight default levelR7c  ctermfg=darkmagenta  guifg=DarkOrchid3
    highlight default levelR8c  ctermfg=brown        guifg=firebrick3
    highlight default levelR9c  ctermfg=gray         guifg=RoyalBlue3
    highlight default levelR10c ctermfg=black        guifg=SeaGreen3
    highlight default levelR11c ctermfg=darkmagenta  guifg=DarkOrchid3
    highlight default levelR12c ctermfg=Darkblue     guifg=firebrick3
    highlight default levelR13c ctermfg=darkgreen    guifg=RoyalBlue3
    highlight default levelR14c ctermfg=darkcyan     guifg=SeaGreen3
    highlight default levelR15c ctermfg=darkred      guifg=DarkOrchid3
    highlight default levelR16c ctermfg=red          guifg=firebrick3
    let rainbow_parenthesis#active = 1
endfunction

function rainbow_parenthsis#Clear()
    let i = 0
    while i != 16
        let i = i + 1
        exe 'highlight clear level' . i . 'c'
    endwhile
    let rainbow_parenthesis#active = 0
endfunction

function rainbow_parenthsis#Toggle ()
    if ! exists('rainbow_parenthesis#active')
        call rainbow_parenthsis#LoadRound ()
    elseif rainbow_parenthesis#active != 0
        call rainbow_parenthsis#Clear ()
    else
        call rainbow_parenthsis#Activate ()
    endif
endfunction

" Section: syntax {{{1
"
" Subsection: parentheses or round brackets: {{{2
"
function rainbow_parenthsis#LoadRound ()
    syntax region levelR1 matchgroup=levelR1c start=/(/ skip=/(.*)/ end=/)/ contains=TOP,levelR1,levelR2,levelR3,levelR4,levelR5,levelR6,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR2 matchgroup=levelR2c start=/(/ skip=/(.*)/ end=/)/ contains=levelR2,levelR3,levelR4,levelR5,levelR6,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR3 matchgroup=levelR3c start=/(/ skip=/(.*)/ end=/)/ contains=levelR3,levelR4,levelR5,levelR6,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR4 matchgroup=levelR4c start=/(/ end=/)/ contains=levelR4,levelR5,levelR6,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR5 matchgroup=levelR5c start=/(/ end=/)/ contains=TOP,levelR5,levelR6,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR6 matchgroup=levelR6c start=/(/ end=/)/ contains=TOP,levelR6,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR7 matchgroup=levelR7c start=/(/ end=/)/ contains=TOP,levelR7,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR8 matchgroup=levelR8c start=/(/ end=/)/ contains=TOP,levelR8,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR9 matchgroup=levelR9c start=/(/ end=/)/ contains=TOP,levelR9,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR10 matchgroup=levelR10c start=/(/ end=/)/ contains=TOP,levelR10,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR11 matchgroup=levelR11c start=/(/ end=/)/ contains=TOP,levelR11,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR12 matchgroup=levelR12c start=/(/ end=/)/ contains=TOP,levelR12,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR13 matchgroup=levelR13c start=/(/ end=/)/ contains=TOP,levelR13,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR14 matchgroup=levelR14c start=/(/ end=/)/ contains=TOP,levelR14,levelR15, levelR16,NoInParens
    syntax region levelR15 matchgroup=levelR15c start=/(/ end=/)/ contains=TOP,levelR15, levelR16,NoInParens
    syntax region levelR16 matchgroup=levelR16c start=/(/ end=/)/ contains=TOP,levelR16,NoInParens
    let rainbow_parenthesis#active = 0
endfunction

" Subsection: box brackets or square brackets: {{{2
"
function rainbow_parenthsis#LoadSquare ()
    syntax region level1 matchgroup=level1c start=/\[/ end=/\]/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level2 matchgroup=level2c start=/\[/ end=/\]/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level3 matchgroup=level3c start=/\[/ end=/\]/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level4 matchgroup=level4c start=/\[/ end=/\]/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level5 matchgroup=level5c start=/\[/ end=/\]/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level6 matchgroup=level6c start=/\[/ end=/\]/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level7 matchgroup=level7c start=/\[/ end=/\]/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level8 matchgroup=level8c start=/\[/ end=/\]/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level9 matchgroup=level9c start=/\[/ end=/\]/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level10 matchgroup=level10c start=/\[/ end=/\]/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level11 matchgroup=level11c start=/\[/ end=/\]/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level12 matchgroup=level12c start=/\[/ end=/\]/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
    syntax region level13 matchgroup=level13c start=/\[/ end=/\]/ contains=TOP,level13,level14,level15, level16,NoInParens
    syntax region level14 matchgroup=level14c start=/\[/ end=/\]/ contains=TOP,level14,level15, level16,NoInParens
    syntax region level15 matchgroup=level15c start=/\[/ end=/\]/ contains=TOP,level15, level16,NoInParens
    syntax region level16 matchgroup=level16c start=/\[/ end=/\]/ contains=TOP,level16,NoInParens
    let rainbow_parenthesis#active = 0
endfunction

" Subsection: curly brackets or braces: {{{2
"
function rainbow_parenthsis#LoadBraces ()
    syntax region level1 matchgroup=level1c start=/{/ end=/}/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level2 matchgroup=level2c start=/{/ end=/}/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level3 matchgroup=level3c start=/{/ end=/}/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level4 matchgroup=level4c start=/{/ end=/}/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level5 matchgroup=level5c start=/{/ end=/}/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level6 matchgroup=level6c start=/{/ end=/}/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level7 matchgroup=level7c start=/{/ end=/}/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level8 matchgroup=level8c start=/{/ end=/}/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level9 matchgroup=level9c start=/{/ end=/}/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level10 matchgroup=level10c start=/{/ end=/}/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level11 matchgroup=level11c start=/{/ end=/}/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level12 matchgroup=level12c start=/{/ end=/}/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
    syntax region level13 matchgroup=level13c start=/{/ end=/}/ contains=TOP,level13,level14,level15, level16,NoInParens
    syntax region level14 matchgroup=level14c start=/{/ end=/}/ contains=TOP,level14,level15, level16,NoInParens
    syntax region level15 matchgroup=level15c start=/{/ end=/}/ contains=TOP,level15, level16,NoInParens
    syntax region level16 matchgroup=level16c start=/{/ end=/}/ contains=TOP,level16,NoInParens
    let rainbow_parenthesis#active = 0
endfunction

" Subsection: angle brackets or chevrons: {{{2
"
function rainbow_parenthsis#LoadChevrons ()
    syntax region level1 matchgroup=level1c start=/</ end=/>/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level2 matchgroup=level2c start=/</ end=/>/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level3 matchgroup=level3c start=/</ end=/>/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level4 matchgroup=level4c start=/</ end=/>/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level5 matchgroup=level5c start=/</ end=/>/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level6 matchgroup=level6c start=/</ end=/>/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level7 matchgroup=level7c start=/</ end=/>/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level8 matchgroup=level8c start=/</ end=/>/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level9 matchgroup=level9c start=/</ end=/>/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level10 matchgroup=level10c start=/</ end=/>/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level11 matchgroup=level11c start=/</ end=/>/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
    syntax region level12 matchgroup=level12c start=/</ end=/>/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
    syntax region level13 matchgroup=level13c start=/</ end=/>/ contains=TOP,level13,level14,level15, level16,NoInParens
    syntax region level14 matchgroup=level14c start=/</ end=/>/ contains=TOP,level14,level15, level16,NoInParens
    syntax region level15 matchgroup=level15c start=/</ end=/>/ contains=TOP,level15, level16,NoInParens
    syntax region level16 matchgroup=level16c start=/</ end=/>/ contains=TOP,level16,NoInParens
    let rainbow_parenthesis#active = 0
endfunction

   " }}}1
finish

"------------------------------------------------------------------------------
"   Copyright (C) 2006  Martin Krischik
"
"   Vim is Charityware - see ":help license" or uganda.txt for licence details.
"------------------------------------------------------------------------------
" vim: textwidth=78 wrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab
" vim: filetype=vim foldmethod=marker
