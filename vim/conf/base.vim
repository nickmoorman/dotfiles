"------------------------------------------------------------------------------
" File: $HOME/.vimrc
" Author: Uwe Hermann <uwe@hermann-uwe.de>
" URL: http://www.hermann-uwe.de/files/vimrc
" $Id: .vimrc 331 2005-09-07 21:09:32Z uh1763 $
"------------------------------------------------------------------------------

"version 6.3


"------------------------------------------------------------------------------
" Standard stuff.
"------------------------------------------------------------------------------

set nocompatible        " Disable vi compatibility.
set nobackup            " Do not keep a backup file.
set history=100         " Number of lines of command line history.
set undolevels=200      " Number of undo levels.
set textwidth=0         " Don't wrap words by default.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set ignorecase          " Case insensitive matching.
set incsearch           " Incremental search.
set nocindent           " I indent my code myself.
set scrolloff=5         " Keep a context when scrolling.
set digraph             " Required for e.g. German umlauts.
set noerrorbells        " No beeps.
" set nomodeline          " Disable modeline.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
"set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set tabstop=4           " Number of spaces <tab> counts for.
set ttyscroll=0         " Turn off scrolling (this is faster).
set ttyfast             " We have a fast terminal connection.
set hlsearch            " Highlight search matches.
set autoindent
" set encoding=utf-8      " Set default encoding to UTF-8.
" set showbreak=+         " Show a '+' if a line is longer than the screen.
" set laststatus=2        " When to show a statusline.
" set autowrite           " Automatically save before :next, :make etc.

set nostartofline       " Do not jump to first character with page commands,
                        " i.e., keep the cursor in the current column.
set viminfo='20,\"50    " Read/write a .viminfo file, don't store more than
                        " 50 lines of registers.

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Tell vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
" set listchars=tab:>-,trail:·,eol:$

" Path/file expansion in colon-mode.
"set wildmode=list:longest
"set wildchar=<TAB>

" Enable syntax-highlighting.
"if has("syntax")
  syntax on
"endif

" Use brighter colors if your xterm has a dark background.
if &term =~ "xterm"
  set background=dark
endif


"------------------------------------------------------------------------------
" Function keys.
"------------------------------------------------------------------------------

" F1: Toggle hlsearch (highlight search matches).
nmap <F1> :set hls!<CR>

" F2: Toggle list (display unprintable characters).
nnoremap <F2> :set list!<CR>

" F3: Toggle expansion of tabs to spaces.
nmap <F3> :set expandtab!<CR>

" F4: Write a ChangeLog entry.
map <F4> :r !date<CR>A Uwe Hermann <uwe@hermann-uwe.de><CR><CR> * |

" F5: Insert current date.
map <F5> :r !date<CR>


"------------------------------------------------------------------------------
" Correct typos.
"------------------------------------------------------------------------------

" English.
iab beacuse    because
iab becuase    because
iab acn        can
iab cna        can
iab centre     center
iab chnage     change
iab chnages    changes
iab chnaged    changed
iab chnagelog  changelog
iab Chnage     Change
iab Chnages    Changes
iab ChnageLog  ChangeLog
iab debain     debian
iab Debain     Debian
iab defualt    default
iab Defualt    Default
iab differnt   different
iab diffrent   different
iab emial      email
iab Emial      Email
iab figth      fight
iab figther    fighter
iab fro        for
iab fucntion   function
iab ahve       have
iab homepgae   homepage
iab logifle    logfile
iab lokk       look
iab lokking    looking
iab mial       mail
iab Mial       Mail
iab miantainer maintainer
iab amke       make
iab mroe       more
iab nwe        new
iab recieve    receive
iab recieved   received
iab erturn     return
iab retrun     return
iab retunr     return
iab seperate   separate
iab shoudl     should
iab soem       some
iab taht       that
iab thta       that
iab teh        the
iab tehy       they
iab truely     truly
iab waht       what
iab wiht       with
iab whic       which
iab whihc      which
iab yuo        you
iab databse    database
iab versnio    version
iab obnsolete  obsolete
iab flase      false
iab recrusive  recursive
iab Recrusive  Recursive

" German.
iab cioa       ciao
iab Cioa       Ciao
iab nciht      nicht
iab zeimlicher ziemlicher
iab zeimlich   ziemlich
iab scheisse   scheiße
iab Scheisse   Scheiße
iab morgne     morgen
iab Morgne     Morgen

" Days of week.
iab monday     Monday
iab tuesday    Tuesday
iab wednesday  Wednesday
iab thursday   Thursday
iab friday     Friday
iab saturday   Saturday
iab sunday     Sunday

" Enable this if you mistype :w as :W or :q as :Q.
" nmap :W :w
" nmap :Q :q


"------------------------------------------------------------------------------
" Abbreviations.
"------------------------------------------------------------------------------

" My name + email address.
ab uhh Uwe Hermann <uwe@hermann-uwe.de>

" Use 'g' to go to the top of the file.
map g 1G

" Quit with 'q' instead of ':q'. VERY useful!
"map q :q<CR>


"------------------------------------------------------------------------------
" HTML.
"------------------------------------------------------------------------------

" Print an empty <a> tag.
map! ;h <a href=""></a><ESC>5hi

" Wrap an <a> tag around the URL under the cursor.
map ;H lBi<a href="<ESC>Ea"></a><ESC>3hi


"------------------------------------------------------------------------------
" Miscellaneous stuff.
"------------------------------------------------------------------------------

" Spellcheck.
"map V :!ispell -x %<CR>:e!<CR><CR>

" ROT13 decode/encode the selected text (visual mode).
" Alternative: 'unmap g' and then use 'g?'.
vmap rot :!tr A-Za-z N-ZA-Mn-za-m<CR>

" Make p in visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>


"------------------------------------------------------------------------------
" File-type specific settings.
"------------------------------------------------------------------------------

if has("autocmd")

  " Enabled file type detection and file-type specific plugins.
  " filetype plugin on indent
  filetype plugin on

  " Drupal *.module and *.engine files.
  augroup module
    autocmd BufRead                     *.module,*.engine set filetype=php
  augroup END

  " Python code.
  augroup python
    autocmd BufReadPre,FileReadPre      *.py set tabstop=4
    autocmd BufReadPre,FileReadPre      *.py set expandtab
  augroup END

  " Ruby code.
  augroup ruby
    autocmd BufReadPre,FileReadPre      *.rb set tabstop=2
    autocmd BufReadPre,FileReadPre      *.rb set expandtab
  augroup END

  " PHP code.
  augroup php
    autocmd BufReadPre,FileReadPre      *.php set tabstop=4
    autocmd BufReadPre,FileReadPre      *.php set expandtab
  augroup END

  " Java code.
  augroup java
    autocmd BufReadPre,FileReadPre      *.java set tabstop=4
    autocmd BufReadPre,FileReadPre      *.java set expandtab
  augroup END

  " ANT build.xml files.
  augroup xml
    autocmd BufReadPre,FileReadPre      build.xml set tabstop=4
  augroup END

  " (J)Flex files.
  augroup lex
    " autocmd BufRead,BufNewFile          *.flex,*.jflex set filetype=lex
    autocmd BufRead,BufNewFile          *.flex,*.jflex set filetype=jflex
  augroup END 

  " (Nu)SMV files.
  augroup smv
    autocmd BufRead,BufNewFile          *.smv set filetype=smv 
  augroup END

  " Scala files.
  augroup scala
    autocmd BufReadPre,FileReadPre      *.scala,*.sbt set filetype=scala
    autocmd BufReadPre,FileReadPre      *.scala,*.sbt set tabstop=2
    autocmd BufReadPre,FileReadPre      *.scala,*.sbt set expandtab
  augroup END

  " Markdown files.
  augroup markdown
    autocmd BufReadPre,FileReadPre      *.md,*.markdown set filetype=markdown
    autocmd BufReadPre,FileReadPre      *.md,*.markdown set tabstop=4
    autocmd BufReadPre,FileReadPre      *.md,*.markdown set expandtab
    autocmd BufReadPre,FileReadPre      *.md,*.markdown set textwidth=80
    autocmd BufReadPre,FileReadPre      *.md,*.markdown set formatoptions+=t
  augroup END

endif


"------------------------------------------------------------------------------
" Debian specific options.
"------------------------------------------------------------------------------

" We know xterm-debian is a color terminal.
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

" Temporary reportbug files.
augroup filetype
  au BufRead reportbug.*                set ft=mail
  au BufRead reportbug-*                set ft=mail
augroup END

" Helpfile.
" set helpfile=$VIMRUNTIME/doc/help.txt


"------------------------------------------------------------------------------
" Local settings.
"------------------------------------------------------------------------------

" Source a local configuration file if available.
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  if has("gui_gtk2") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

"------------------------------------------------------------------------------
" Custom stuff.
"------------------------------------------------------------------------------
set shiftwidth=4
set expandtab
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set number " show line numbers

"" From personal Mac
"set mouse=a
"set cindent
"set smartindent
"set autoindent
"set tabstop=4
""set cinkeys=1{,0},:,0#,!,!(^F character)
