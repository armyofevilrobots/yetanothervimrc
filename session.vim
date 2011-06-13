let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>35_yrrecord =YRRecord3()
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
inoremap <Plug>ClojureReplDownHistory :call b:vimclojure_repl.downHistory()
inoremap <Plug>ClojureReplUpHistory :call b:vimclojure_repl.upHistory()
inoremap <Plug>ClojureReplEnterHook :call b:vimclojure_repl.enterHook()
imap <C-Space>         
map  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
map <NL> j
map  k
map  l
nnoremap <silent>  :YRReplace '1', 'p'
nnoremap <silent>  :YRReplace '-1', 'P'
snoremap  b<BS>
nnoremap <silent>  :TComment
nnoremap <silent> r :TCommentRight
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
onoremap <silent>  :TComment
vnoremap <silent> # :call VisualSearch('b')
snoremap % b<BS>%
snoremap ' b<BS>'
vnoremap <silent> * :call VisualSearch('f')
cmap ½ $
imap ½ $
xnoremap <silent> P :YRPaste 'P', 'v'
nnoremap <silent> P :YRPaste 'P'
xmap S <Plug>VSurround
snoremap U b<BS>U
nnoremap <silent> \__ :TComment
nnoremap <silent> \_r :TCommentRight
snoremap \ b<BS>\
noremap \_s :TCommentAs =&ft_
noremap \_n :TCommentAs =&ft 
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
vnoremap <silent> \_r :TCommentRight
onoremap <silent> \_r :TCommentRight
vnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
vnoremap <silent> \__ :TCommentMaybeInline
onoremap <silent> \__ :TComment
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
map \tt <Plug>AM_tt
map \tsq <Plug>AM_tsq
map \tsp <Plug>AM_tsp
map \tml <Plug>AM_tml
map \tab <Plug>AM_tab
map \m= <Plug>AM_m=
map \t@ <Plug>AM_t@
map \t~ <Plug>AM_t~
map \t? <Plug>AM_t?
map \w= <Plug>AM_w=
map \ts= <Plug>AM_ts=
map \ts< <Plug>AM_ts<
map \ts; <Plug>AM_ts;
map \ts: <Plug>AM_ts:
map \ts, <Plug>AM_ts,
map \t= <Plug>AM_t=
map \t< <Plug>AM_t<
map \t; <Plug>AM_t;
map \t: <Plug>AM_t:
map \t, <Plug>AM_t,
map \t# <Plug>AM_t#
map \t| <Plug>AM_t|
map \T~ <Plug>AM_T~
map \Tsp <Plug>AM_Tsp
map \Tab <Plug>AM_Tab
map \T@ <Plug>AM_T@
map \T? <Plug>AM_T?
map \T= <Plug>AM_T=
map \T< <Plug>AM_T<
map \T; <Plug>AM_T;
map \T: <Plug>AM_T:
map \Ts, <Plug>AM_Ts,
map \T, <Plug>AM_T,o
map \T# <Plug>AM_T#
map \T| <Plug>AM_T|
map \Htd <Plug>AM_Htd
map \anum <Plug>AM_aunum
map \aunum <Plug>AM_aenum
map \afnc <Plug>AM_afnc
map \adef <Plug>AM_adef
map \adec <Plug>AM_adec
map \ascom <Plug>AM_ascom
map \aocom <Plug>AM_aocom
map \adcom <Plug>AM_adcom
map \acom <Plug>AM_acom
map \abox <Plug>AM_abox
map \a( <Plug>AM_a(
map \a= <Plug>AM_a=
map \a< <Plug>AM_a<
map \a, <Plug>AM_a,
map \a? <Plug>AM_a?
nmap \ca <Plug>NERDCommenterAltDelims
vmap \cA <Plug>NERDCommenterAppend
nmap \cA <Plug>NERDCommenterAppend
vmap \c$ <Plug>NERDCommenterToEOL
nmap \c$ <Plug>NERDCommenterToEOL
vmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
vmap \cn <Plug>NERDCommenterNest
nmap \cn <Plug>NERDCommenterNest
vmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
vmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
vmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
vmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
vmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
vmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
vmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
vmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
map \q :e ~/buffer
noremap \m mmHmt:%s///ge'tzt'm
map \cd :cd %:p:h
map \tm :tabmove 
map \tc :tabclose
map \te :tabedit 
map \tn :tabnew %
map \ba :1,300 bd!
map \bd :Bclose
map <silent> \ :noh
map \g :vimgrep // **/*.<Left><Left><Left><Left><Left><Left><Left>
map \t8 :setlocal shiftwidth=4
map \t4 :setlocal shiftwidth=4
map \t2 :setlocal shiftwidth=2
map \e :e! ~/.vim_runtime/vimrc
nmap \w :w!
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
xnoremap <silent> d :YRDeleteRange 'v'
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> gp :YRPaste 'gp'
nnoremap <silent> gP :YRPaste 'gP'
vnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
vnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
vnoremap <silent> gv :call VisualSearch('gv')
xnoremap <silent> p :YRPaste 'p', 'v'
nnoremap <silent> p :YRPaste 'p'
xmap s <Plug>Vsurround
xnoremap <silent> x :YRDeleteRange 'v'
xnoremap <silent> y :YRYankRange 'v'
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <SNR>35_yrrecord :call YRRecord3()
nmap <silent> <F12> <Plug>ToggleProject
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>24_WE <Plug>AlignMapsWrapperEnd
map <SNR>24_WS <Plug>AlignMapsWrapperStart
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
nnoremap <Plug>ClojureCloseResultBuffer :call vimclojure#ResultBuffer.CloseBuffer()
nnoremap <Plug>ClojureStartLocalRepl :call vimclojure#ProtectedPlug(function("vimclojure#StartRepl"), [ b:vimclojure_namespace ])
nnoremap <Plug>ClojureStartRepl :call vimclojure#ProtectedPlug(function("vimclojure#StartRepl"), [  ])
nnoremap <Plug>ClojureEvalParagraph :call vimclojure#ProtectedPlug(function("vimclojure#EvalParagraph"), [  ])
nnoremap <Plug>ClojureEvalToplevel :call vimclojure#ProtectedPlug(function("vimclojure#EvalToplevel"), [  ])
vnoremap <Plug>ClojureEvalBlock :call vimclojure#ProtectedPlug(function("vimclojure#EvalBlock"), [  ])
nnoremap <Plug>ClojureEvalLine :call vimclojure#ProtectedPlug(function("vimclojure#EvalLine"), [  ])
nnoremap <Plug>ClojureEvalFile :call vimclojure#ProtectedPlug(function("vimclojure#EvalFile"), [  ])
nnoremap <Plug>ClojureMacroExpand1 :call vimclojure#ProtectedPlug(function("vimclojure#MacroExpand"), [ 1 ])
nnoremap <Plug>ClojureMacroExpand :call vimclojure#ProtectedPlug(function("vimclojure#MacroExpand"), [ 0 ])
nnoremap <Plug>ClojureRunTests :call vimclojure#ProtectedPlug(function("vimclojure#RunTests"), [ 0 ])
nnoremap <Plug>ClojureRequireFileAll :call vimclojure#ProtectedPlug(function("vimclojure#RequireFile"), [ 1 ])
nnoremap <Plug>ClojureRequireFile :call vimclojure#ProtectedPlug(function("vimclojure#RequireFile"), [ 0 ])
nnoremap <Plug>ClojureGotoSourceInteractive :call vimclojure#ProtectedPlug(function("vimclojure#GotoSource"), [ input("Symbol to go to: ") ])
nnoremap <Plug>ClojureGotoSourceWord :call vimclojure#ProtectedPlug(function("vimclojure#GotoSource"), [ expand("<cword>") ])
nnoremap <Plug>ClojureSourceLookupInteractive :call vimclojure#ProtectedPlug(function("vimclojure#SourceLookup"), [ input("Symbol to look up: ") ])
nnoremap <Plug>ClojureSourceLookupWord :call vimclojure#ProtectedPlug(function("vimclojure#SourceLookup"), [ expand("<cword>") ])
nnoremap <Plug>ClojureMetaLookupInteractive :call vimclojure#ProtectedPlug(function("vimclojure#MetaLookup"), [ input("Symbol to look up: ") ])
nnoremap <Plug>ClojureMetaLookupWord :call vimclojure#ProtectedPlug(function("vimclojure#MetaLookup"), [ expand("<cword>") ])
nnoremap <Plug>ClojureFindDoc :call vimclojure#ProtectedPlug(function("vimclojure#FindDoc"), [  ])
nnoremap <Plug>ClojureJavadocLookupInteractive :call vimclojure#ProtectedPlug(function("vimclojure#JavadocLookup"), [ input("Class to lookup: ") ])
nnoremap <Plug>ClojureJavadocLookupWord :call vimclojure#ProtectedPlug(function("vimclojure#JavadocLookup"), [ expand("<cword>") ])
nnoremap <Plug>ClojureDocLookupInteractive :call vimclojure#ProtectedPlug(function("vimclojure#DocLookup"), [ input("Symbol to look up: ") ])
nnoremap <Plug>ClojureDocLookupWord :call vimclojure#ProtectedPlug(function("vimclojure#DocLookup"), [ expand("<cword>") ])
nnoremap <Plug>ClojureAddToLispWords :call vimclojure#ProtectedPlug(function("vimclojure#AddToLispWords"), [ expand("<cword>") ])
map <C-Left> :bp
map <C-Right> :bn
cnoremap  <Home>
cnoremap  <End>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
cnoremap  
cnoremap  <Down>
cnoremap  <Up>
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
cnoremap $q eDeleteTillSlash()
cnoremap $c e eCurrentFileDir("e")
cnoremap $j e ./
cnoremap $d e ~/Desktop/
cnoremap $h e ~/
vmap ½ $
nmap ½ $
omap ½ $
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set cmdheight=2
set cpoptions=aABceFs$
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set grepprg=/bin/grep\ -nH
set guifont=Anonymous\ Pro\ 12
set guioptions=agirLtT
set helplang=en
set hidden
set history=300
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchtime=2
set nomodeline
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/IndexedSearch,~/.vim/bundle/VimClojure,~/.vim/bundle/Zenburn,~/.vim/bundle/bufexplorer.zip,~/.vim/bundle/darkburn,~/.vim/bundle/freya,~/.vim/bundle/gist,~/.vim/bundle/gundo.vim,~/.vim/bundle/jquery,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/neverland-vim-theme,~/.vim/bundle/pylint.vim,~/.vim/bundle/rainbow_parens,~/.vim/bundle/snipmate.vim,~/.vim/bundle/sparkup,~/.vim/bundle/textile.vim,~/.vim/bundle/vim-align,~/.vim/bundle/vim-bundle-python,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-colorschemes,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-irblack,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-project,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-railscasts-theme,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-ruby,~/.vim/bundle/vim-ruby-debugger,~/.vim/bundle/vim-shoulda,~/.vim/bundle/vim-supertab,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-taglist-plus,~/.vim/bundle/vim-tcomment,~/.vim/bundle/vim-vividchalk,~/.vim/bundle/vim-wombat,~/.vim/bundle/vim-yankring,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/snipmate.vim/after,~/.vim/bundle/vim-bundle-python/after,~/.vim/after
set scrolloff=7
set sessionoptions=blank,curdir,folds,help,options,tabpages,winsize,resize,winpos,winsize,blank,curdir
set shell=/bin/bash
set shiftwidth=4
set showmatch
set showtabline=2
set smartindent
set smarttab
set splitright
set statusline=%F%m%r%h%w\ [%Y][HEX=%02.2B][@%04l,%04v][LEN=%L]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=usetab
set tabstop=4
set textwidth=500
set whichwrap=b,s,,,,,<,>,h,l
set wildmenu
set window=21
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 .vimrc
args \[BufExplorer]
set lines=22 columns=80
edit .vimrc
set splitbelow splitright
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 438 - ((10 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
438
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
