"------------------------------------------------------------------------------
" Vundle stuff.
"------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"let g:vundle_default_git_proto = 'git'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-rails.git'
"Bundle 'FuzzyFinder'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Color schemes
Plugin 'chriskempson/base16'
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'

" Syntax highlighting
Plugin 'evidens/vim-twig'
Plugin 'leafgarland/typescript-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plugin 'derekwyatt/vim-scala'
Plugin 'udalov/kotlin-vim'
"Plugin 'lepture/vim-jinja'
Plugin 'Glench/Vim-Jinja2-Syntax'

" Clojure plugins
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
"Plugin 'vim-scripts/paredit.vim'

" Miscellaneous plugins
"Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-obsession'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'
let g:go_version_warning = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

