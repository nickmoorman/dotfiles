" Start NERDTree at startup and switch focus to the actual window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
" Close NERDTree with q instead of qall
" (NOTE: This was changed from the previous method in:
" https://github.com/scrooloose/nerdtree/commit/5c202747616e0d614f8de9117162fcf8e8a4c27e
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDShutUp=1
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
let NERDTreeWinSize=40
let b:match_ignorecase = 1
" Open a new NERDTree buffer with C-n
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

