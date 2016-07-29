" My Vimrc
" -----------------
" BEGIN Vundle
" -----------------

set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmark/Vundle.vim'

" -----------------
" Color schemes
" -----------------

" Flazz color schemes
Plugin 'flazz/vim-colorschemes'

" Daylerees color schemes
Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }

" Solarized color scheme for vim
Plugin 'altercation/vim-colors-solarized'

" Base 16 Color Schemes
Plugin 'chriskempson/base16-vim'

" Mango vim colorscheme
Plugin 'goatslacker/mango.vim'

" Jellybeans color scheme
Plugin 'nanotech/jellybeans.vim'

" Mustang Colorscheme
Plugin 'croaker/mustang-vim'

" Desert Colorscheme
Plugin 'fugalh/desert.vim'

" Benokai Colorscheme (modified Monokai)
Plugin 'mcandre/Benokai'

" -----------------
" Syntax
" -----------------

" Jelera Javascript Syntax Highlighting
Plugin 'jelera/vim-javascript-syntax'

" More JS syntax highlighting
Plugin 'pangloss/vim-javascript'

" Syntastic syntax checker (ESLint and JSHint)
Plugin 'scrooloose/syntastic'

" Add support for more JS libraries
Plugin 'othree/javascript-libraries-syntax.vim'

" A collection of language packs for Vim
Plugin 'sheerun/vim-polyglot'

" -----------------
" Editor tools
" -----------------

" The Nerd Tree Plugin
Plugin 'scrooloose/nerdtree'

" Vim Fugitive a Git plugin
Plugin 'tpope/vim-fugitive'

" Vim Airline for status bar
Plugin 'bling/vim-airline'

" Mini Buffer
" Plugin 'fholgado/minibufexpl.vim'

" Bufstop for fast buffer switching
" Plugin 'mihaifm/bufstop'

" CtrlP File finder
Plugin 'kien/ctrlp.vim'

" -----------------
" Autocompletion, etc.
" ----------------

" Autocomplete brackets, quotes, etc
Plugin 'Raimondi/delimitMate'

" Vim Autocompletion
" Plugin 'Valloric/YouCompleteMe'

" Improve Autocompletion for JS
" Plugin 'marijnh/tern_for_vim'

" Auto close HTML tags
Plugin 'vim-scripts/HTML-AutoCloseTag'

" Emmet expand HTML abbreviations
Plugin 'mattn/emmet-vim'

" Jump between matching html tags
Plugin 'tmhedberg/matchit'

" Add all plugins before the following line
call vundle#end()
" Required by vundle
" Remove indent if indentation causes problems
filetype plugin indent on

" -----------------
" END Vundle
" -----------------

" -----------------
" Vim Configurations
" -----------------

" CtrlP uses Control + P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" CtrlP ignore these directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Make NERDTree run on startup
" autocmd vimenter * NERDTree

" Set NERDTree window size
let NERDTreeWinSize=31

" Show Airline without NERDTree
set laststatus=2

" Show Airline buffers at the top
let g:airline#extensions#tabline#enabled = 1

" Set colorscheme
" favorites: jellybeans, molokai, freshcut, mustang
" colorscheme molokai
if has('gui_running')
    colorscheme molokai
    set background=dark
	set guifont=Menlo:h12
else
    set t_Co=256
    set background=light
    colorscheme desert
endif

" Get rid of initial MacVim scheme
let macvim_skip_colorscheme = 1

" Set the file explorer to show up in a list view
let g:netrw_liststyle=3

" Set line number
set number

" Show spaces as dots and tabs as > dots
set listchars=tab:>·,space:·
set list
"
" Set gutter width
set numberwidth=4

" Set default syntax highlighting
syntax enable

" Expand tabs to 4 spaces, etc
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Set indendation rules
set autoindent
set smartindent

" insert tabs on the start of a line to shiftwidth
" set smarttab

" Set highlighting search terms
set nohlsearch

" Ignore case when searching
set ignorecase

" Show search matches as you type
set incsearch

" No swap file plz
set noswapfile

" Open vertical splits to the right
set splitright

" Don't beep at me or flash at me
" set noerrorbells
set visualbell
" set t_vb=
" autocmd! GUIEnter * set vb t_vb=

" Switch buffers without saving
set hidden

" Source the vimrc file after saving it
" augroup reload_vimrc " {
"    autocmd!
"    autocmd BufWritePost $MYVIMRC source $MYVIMRC
" augroup END " }

" Customize Syntastic
let g:syntastic_javascript_checkers = ['jshint', 'eslint', 'jslint']
let g:syntastic_html_checkers=['']

" Enable Emmet for just HTML/CSS
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Folding settings
set foldmethod=indent " Lines with equal indent form a fold
set foldnestmax=10 " Max of 10 nesting folds
set nofoldenable " keep all folds open by default
set foldlevel=1 " Not sure...

" Remove scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Save cursor location when switching buffers
set nostartofline

" Automatically delete trailing whitespace when the buffer writes
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Highlight lines over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Remove enter save prompt
set shortmess=aoOTt

" -----------------
" Leader mappings
" -----------------

" Set my leader
let mapleader=","

" Set <leader> + '.' to edit my Vimrc
nmap <silent> <leader>. :edit $MYVIMRC <CR>

" May <leader> + 'n' to create a new buffer in the active window
nmap <silent> <leader>n :new <Bar> only <CR>

" Map <leader> + 'h' hide/view NERDTreeToggle
nmap <silent> <leader>h :NERDTreeToggle <CR>

" Map <leader> + 'q' to close a split
nmap <silent> <leader>q :q <CR>

" Delete a buffer and go to the previous one
" instead of closing the split
nmap <silent> <leader>d :bprevious<CR>:bdelete #<CR>

" Maps <leader> + window # to switch windows.
" http://stackoverflow.com/questions/6403716/shortcut-for-moving-between-vim-windows
let i = 1
while i <= 9
    execute 'nnoremap <silent> <leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

" -----------------
" Other mappings
" -----------------

" Maps Control + hjkl to move between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Maps Tab to move forward
nmap <silent><c-]> :bnext <CR>
nmap <silent><c-[> :bprevious <CR>
"
" Map Emmet leader to ','
let g:user_emmet_leader_key=','

" Control+E jumps end of the line in insert mode
inoremap <C-e> <C-o>A
