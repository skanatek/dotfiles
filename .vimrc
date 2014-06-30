" change the mapleader from \ to ,
let mapleader=","

" " set up local leader to ,, to allow for vim-org to spawn a Calendar
let maplocalleader="\\"



" Vundle START 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Git plugin for vim
Plugin 'tpope/vim-fugitive'

" Supertab allows you to use <Tab> for all your insert completion needs
" (:help ins-completion). 
Plugin 'ervandew/supertab'

"ShowMarks provides a visual representation of the location marks. 
Plugin 'vim-scripts/ShowMarks'

" Provides tab completion while inside the “/” search
Plugin 'vim-scripts/SearchComplete'

"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'

" Syntastic is a simple linter that highlights problems with syntax in a file
Plugin 'scrooloose/syntastic'


" Rainbow parentheses:
Plugin 'kien/rainbow_parentheses.vim.git'

"The matchit.vim script allows you to configure % to match more than just
" single characters.
Plugin 'vim-scripts/matchit.zip.git'

"Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plugin 'tpope/vim-surround'

"This script provides a command which will attempt to guess the correct indent settings for an open file, for use when there is no modeline available. Note that this is a pure vim implementation, and doesn't require any external applications or interpreters. 
Plugin 'ciaranm/detectindent'

" snipMate.vim aims to be an unobtrusive, concise vim script that implements some of TextMate's snippets features in Vim. A snippet is a piece of often-typed text that you can insert into your document using a trigger word followed by a <tab>. 
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'

" If you've ever tried using the "." command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole.  That disappointment ends today.  Repeat.vim remaps "." in a way that plugins can tap into it. Adding support to a plugin is generally as simple as the following command at the end of your map functions.
" silent! call repeat#set("\<Plug>MyWonderfulMap",v:count) 
Plugin 'tpope/vim-repeat'


" This plugin is a front for ag, A.K.A. the_silver_searcher. Ag can be used as a replacement for 153% of the uses of ack. This plugin will allow you to run ag from vim, and shows the results in a split window.
Plugin 'rking/ag.vim'

" Yankstack.vim is a lightweight implementation of the Emacs 'kill ring' for Vim. It allows you to yank and delete things without worrying about losing the text that you yanked previously. It effectively turns your default register into a stack, and lets you cycle through the items in the stack after doing a paste.
Plugin 'maxbrunsfeld/vim-yankstack'

" easybuffer.vim - is a simple plugin to quickly switch between buffers using corresponding keys or buffer numbers displayed in easybuffer quick switch window 
Plugin 'troydm/easybuffer.vim'

"Lean & mean status/tabline for vim that's light as air. 
Plugin 'bling/vim-airline'

" This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces. For code indented with tabs I think there is no need to support it, because you can use :set list lcs=tab:\|\ (here is a space). 
Plugin 'Yggdroot/indentLine'

"The solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" Easymotion.
Plugin 'Lokaltog/vim-easymotion'






" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Vundle END


" CtrlP settings:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Rainbow parentheses:
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Folding:
set foldmethod=syntax
set foldcolumn=4     " the number of columns to use for folding display at the left

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_erlang_checkers=['escript']

" " show leader press in the status bar
set showcmd

" " Quickly edit/reload/source the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

let g:snips_trigger_key='<c-p>'

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

let g:ctrlp_show_hidden = 1

" --- airline settings
" Make airline always be visible by default
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

let g:solarized_termcolors=256
colorscheme solarized
syntax enable
if has('gui_running')
	set background=light
else
	set background=dark
endif
