"----------------------------------------------
" Vundle Plugin management
"----------------------------------------------
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
" Dependencies
Plugin 'Shougo/neocomplcache'                     " Depenency for Shougo/neosnippet
Plugin 'godlygeek/tabular'                        " This must come before plasticboy/vim-markdown

" General plugins
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'               " Default snippets for many languages
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'w0rp/ale'                                 " Linting plugin

if !has('nvim')
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

" Language support
Plugin 'fatih/vim-go'				                      " Go support
Plugin 'zchee/deoplete-go', { 'do': 'make'}       " Go auto completion
Plugin 'zchee/deoplete-jedi'                      " Go auto completion
Plugin 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' } " Go auto completion
Plugin 'pangloss/vim-javascript'                  " JavaScript syntax highlighting
Plugin 'chr4/nginx.vim'           		            " nginx syntax highlighting
Plugin 'hashivim/vim-terraform'                   " Terraform syntax highlighting
Plugin 'plasticboy/vim-markdown'		              " Markdown syntax highlighting
Plugin 'lifepillar/pgsql.vim'                  	  " PostgreSQL syntax highlighting

" Colorschemes
Plugin 'NLKNguyen/papercolor-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"----------------------------------------------
"  General configs
"----------------------------------------------
set number	                " enable line number
set autoindent				      " take indent for new line from previous line
set smartindent         		" enable smart indentation
set autoread				        " reload file if the file changes on the disk
set autowrite				        " write when switching buffers
set autowriteall			      " write on :quit

set clipboard=unnamed
set laststatus=2
set encoding=utf-8
set expandtab               " expands tabs to spaces
set backspace=2

set softtabstop=2
set tabstop=2
set title                   " let vim set the terminal title
set updatetime=100          " redraw the status bar often

syntax on

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"----------------------------------------------
" Color configs
"----------------------------------------------
set background=dark
colorscheme PaperColor

" Override the search highlight color with a combination that is easier to
" read. The default PaperColor is dark green backgroun with black foreground.
"
" Reference:
" - http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

"----------------------------------------------
" Splits
"----------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

" Closing splits
nnoremap <leader>q :close<cr>

"----------------------------------------------
" Navigation
"----------------------------------------------
"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set editing-mode vi

"----------------------------------------------
" Plugin: tmhedberg/SimpylFold
"----------------------------------------------
let g:SimpylFold_docstring_preview=1

"----------------------------------------------
" Plugin: scrooloose/nerdtree
"----------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Files to ignore
let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$'
\]

" Close vim if NERDTree is the only opened window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show NERDTree by default
let g:nerdtree_tabs_open_on_console_startup = 1

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2

"----------------------------------------------
" Plugin: zchee/deoplete-go
"----------------------------------------------
" Enable completing of go pointers
let g:deoplete#sources#go#pointer = 1

"----------------------------------------------
" Plugin: Shougo/neosnippet
"----------------------------------------------
" Disable the default snippets (needed since we do not install
" Shougo/neosnippet-snippets).
"
" Below you can disable default snippets for specific languages. If you set the
" language to _ it sets the default for all languages.
" let g:neosnippet#disable_runtime_snippets = {
"    \ 'go': 1
"\}

" Keybindings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Set the path to our snippets
" let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

"----------------------------------------------
" Plugin 'Valloric/YouCompleteMe'
"----------------------------------------------
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" call togglebg#map("<F5>")

" Markdown previews settings
let g:instant_markdown_autostart = 1
let g:instant_markdown_allow_unsafe_content = 1


"----------------------------------------------
" Plugin 'w0rp/ale'
"----------------------------------------------
" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

"----------------------------------------------
" Language: Python
"----------------------------------------------
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

" Virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(compile(open(activate_this, "rb").read(), activate_this, 'exec'), dict(__file__=activate_this))
EOF

let python_highlight_all=1

"----------------------------------------------
" Language: Golang
"----------------------------------------------
au BufNewFile,BufRead *.go set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"

" Set neosnippet as snippet engine
let g:go_snippet_engine = "neosnippet"

" Enable syntax highlighting per default
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

" Show the progress when running :GoCoverage
" let g:go_echo_command_info = 1

" Show type information
" let g:go_auto_type_info = 1

" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"


" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Frontend indentation
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2

"----------------------------------------------
" Language: SQL
"----------------------------------------------
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

" Disable the issue of SQLComplete: The debxt plugin must be loaded for dynamic SQL completion
let g:omni_sql_no_default_maps = 1
