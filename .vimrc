set nocompatible

fun! MySys()
   return "$1"
endfun
" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off 
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'paredit')
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=300

" Enable filetype plugin
syntax on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = ","
"let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vim_runtime/vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Missing modeline
set modeline
set modelines=5

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl
let c_minlines=500
" Set font according to system
if MySys() == "mac"
  set gfn=Bitstream\ Vera\ Sans\ Mono:h13
  set shell=/bin/bash
  set background=dark
elseif MySys() == "windows"
  set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif MySys() == "linux"
  "set gfn=Consolas\ 12
  "set gfn=Mensch\ 11
  "set guifont=Inconsolata-dz\ 13
  "set guifont=Anonymous\ Pro\ 12
  "set guifont=Cosmic\ Sans\ Neue\ Mono\ 13.5
  "set guifont=Fantasque\ Sans\ Mono\ 13.5
  "set guifont=hack:h18
  set guifont=Fira\ Code\ Retina:h19 
  highlight Comment cterm=italic gui=italic
  set shell=/bin/bash
else
  "set gfn=Consolas\ For\ Powerline\ 13
  "set guifont=Cosmic\ Sans\ Neue\ Mono\ 13.5
  "set guifont=Anonymous\ Pro\ 12
  "set guifont=Inconsolata-dz\ 12
  "set guifont=Fantasque\ Sans\ Mono\ 13.5
  " set guifont=hack:h18
  " set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h18
  " set guifont=hasklig:h18
  set shell=/bin/bash
  set background=dark
  set guifont=Fira\ Code\ Retina:h19
  set macligatures
  highlight Comment cterm=italic gui=italic
endif


set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

map <leader>t2 :setlocal shiftwidth=2<cr>
map <leader>t4 :setlocal shiftwidth=4<cr>
map <leader>t8 :setlocal shiftwidth=4<cr>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map space to / (search) and c-space to ? (backgwards search)
map <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <c-right> :bn<cr>
map <c-left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>


command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Specify the behavior when switching between buffers 
try
  set switchbuf=usetab
  set stal=2
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Useful on some European keyboards
map ½ $
imap ½ $
vmap ½ $
cmap ½ $


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
au FileType python set nocindent
"let python_highlight_all = 1
let python_highlight_indents = 0
au FileType python syn keyword pythonDecorator True None False self

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
"autocmd FileType python compiler pylint
"set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
"let makeprg='pylint % -i y -r n -f parseable'
"set errorformat=%f:%l:\ %m
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_highlighting=1
"let g:syntastic_quiet_warnings = {'level': 'warnings'}
let g:syntastic_python_checkers=['flake8', "pep8" ]
let g:syntastic_check_on_open = 0


au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

"au FileType python inoremap <buffer> $r return 
"au FileType python inoremap <buffer> $i import 
"au FileType python inoremap <buffer> $p print 
"au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python inoremap # X<BS># 
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 

""""""""""""""""""""""""""""""
" KID
"""""""""""""""""""""""""""""
au BufRead,BufNewFile *.kid     set filetype=kid

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

"au FileType javascript inoremap <buffer> $r return 
"au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

""""""""""""""""""""""""""""""
" => Fuzzy finder
""""""""""""""""""""""""""""""
try
    call fuf#defineLaunchCommand('FufCWD', 'file', 'fnamemodify(getcwd(), ''%:p:h'')')
    map <leader>t :FufCWD **/<CR>
catch
endtry


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

" Clojure mode stuffs


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some cool stuff from Derek Wyatt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cpoptions+=$
" set virtualedit=all
"[HEX=\%02.2B]
set statusline=%F%m%r%h%w\ [%Y][@%04l/%L,%04v]
set guioptions-=m
set guioptions-=e


"""""""""""""""""
" Diff local against saved.
" http://vim.wikia.com/wiki/Diff_current_buffer_and_the_original_file
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

"""""""""""""""""
"My Nerdtree settings
"
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$' ]

let NERDTreeShowBookmarks=1       " Show the bookmarks table on startup
let NERDTreeShowFiles=1           " Show hidden files, too
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1          " Quit on opening files from the tree
let NERDTreeHighlightCursorline=1 " Highlight the selected entry in the tree
let NERDTreeMouseMode=2           " Use a single click to fold/unfold directories
                                  " and a double click to open files
noremap <F2> :NERDTreeToggle<CR>

"Make sure we use omnicomplete instead of ctl-space
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

let g:showmarks_enable=0                                  
let g:proj_flags="imstg"
let g:proj_window_width=35
let g:virtualenv_directory='/home/derek/workspace'


"Supertab stuff to prevent conflict with UltiSnips
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"Some stuff to restore/save window sizes:
"set sessionoptions+=resize,winpos,winsize,blank,curdir
"set sessionoptions-=buffers
"autocmd VIMEnter * :source /home/enki/.vim/session.vim
"autocmd VIMLeave * :mksession! /home/enki/.vim/session.vim

"Open to the right, always.
set splitright
let g:Powerline_symbols="unicode"


" Slimv bitches
let g:slimv_swank_cmd = '! xterm -e sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp &'

" lazy method of appending this onto your .vimrc ":w! >> ~/.vimrc"
" ------------------------------------------------------------------
" this block of commands has been autogenerated by solarized.vim and
" includes the current, non-default Solarized option values.
" To use, place these commands in your .vimrc file (replacing any
" existing colorscheme commands). See also ":help solarized"




"Do this last now.
if has("gui_running")
  set guioptions-=T
  set t_Co=256
  "set background=dark
  "colorscheme twilight
  "colorscheme peaksea
  "colorscheme xoria256
  "colorscheme wombat
  " ------------------------------------------------------------------
  " Solarized Colorscheme Config
  " ------------------------------------------------------------------
  let g:solarized_contrast="high"    "default value is normal
  syntax enable
  set background=dark
  colorscheme solarized
  " ------------------------------------------------------------------
  " The following items are available options, but do not need to be
  " included in your .vimrc as they are currently set to their defaults.
  " let g:solarized_termtrans=0
  " let g:solarized_degrade=0
  " let g:solarized_bold=1
  " let g:solarized_underline=1
  " let g:solarized_italic=1
  " let g:solarized_termcolors=256
  " let g:solarized_visibility="normal"
  " let g:solarized_diffmode="normal"
  " let g:solarized_hitrail=0
  " let g:solarized_menu=1

  set nu
else
  set t_Co=256
  let g:solarized_termcolors=256
  set background=dark
  colorscheme solarized
  "colorscheme xoria256
  highlight Comment cterm=italic gui=italic
  set nonu
endif

au BufRead,BufNewFile Vagrantfile\= set ft=ruby

"; Install powerline
set rtp+="/home/derek/.vim/bundle/powerline/powerline/bindings/vim"
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:Powerline_symbols = 'fancy'
let g:Powerline_dividers_override = ["\Ue0b0", "\Ue0b1", "\Ue0b2", "\Ue0b3"]
let g:Powerline_symbols_override = { 'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2" }

set number

"Fix pyflake/flake8 indents with https://github.com/hynek/vim-python-pep8-indent.git
let g:pymode_indent = 0

"; A bunch of haskell stuffs.
au BufEnter *.hs compiler ghc
let g:haddock_browser="/usr/bin/google-chrome"
let g:haskell_conceal_enumerations=0

"; JS Hinting
let g:syntastic_jshint_exec="/home/derek/.npm/jshint/2.5.1/package/bin/jshint"
let g:haddock_docdir="/usr/share/haddock-2.13.2/html/"

"; GoPath /Users/derek/

