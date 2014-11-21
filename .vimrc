" set spell spelllang=en_us

set keymap=ukrainian-jcuken

" Default - latin layout
set iminsert=0
" Default - latin layout in search mode
set imsearch=0

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader=","
let g:EasyMotion_leader_key = '\'
" Sugar for quickly seeking word
map gw \w
map gs \b

" Paste using ,v in normal mode
nnoremap <leader>v "+gP
" In insert mode, paste from clipboard using CTRL+v
inoremap <C-v> <ESC>:set paste<CR>"+gp<ESC>:set nopaste<ENTER>i<RIGHT>

" Close the current buffer
map <leader>d :bd<cr>

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Alternative to Esc from insert mode
imap jj <Esc>:update<cr>

map Q ZQ

" Tab configuration
map <C-a> :tabprevious<CR>
map <C-e> :tabnext<CR>
map <leader>n :tabnew<cr>

" Set 256 colors in terminal
set t_Co=256 

" make whitespace char visible
set list!
" sets listchars to not display an end-of-line character, and to display > for the first character occupied by a tab, and - for any subsequent characters that the tab may occupy
set listchars=tab:>-

" In many terminal emulators the mouse works just fine
if has('mouse')
  set mouse=a
endif


" Delete word after the cursor including space after it in insert mode
:imap <C-D> <C-O>dw

" CTRL+K to delete until the end of line
:imap <C-K> <C-O>D

" List buffers
:map gb :buffers<CR>

"" Experimental
" Select words in visual mode with Shift+arrows
nmap <S-Right> ve
nmap <S-Left> vb
" Start visual mode in insert mode
imap <S-Right> <Esc><S-Right>
imap <S-Left> <Esc><S-Left>
" Enter insert mode and insert a space
noremap <Space> i<Space>

" Save file and add it to git
map <F5> :Gwrite<CR>
imap <F5> <Esc><F5>

map <F6> :update<CR>:!ghc -Wall -O2 -fforce-recomp % -o %:r && time ./%:r<CR>
imap <F6> <Esc><F6>
map gh :!ghc -O2 -fforce-recomp % -o %:r<CR>

" Execute Python file being edited with <Shift> + e:
nnoremap E w:<CR>:!python % <CR>

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=80

set ai "Auto indent
" set si "Smart indent
set wrap "Wrap lines

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'vim-scripts/git-time-lapse'
     
Bundle 'kien/ctrlp.vim'

Bundle 'lervag/vim-latex'
Bundle 'Shougo/neocomplete.vim'

" Bundle 'vim-scripts/ShowMarks'

" Bundle 'vim-scripts/project.vim'
Bundle 'vim-scripts/taglist.vim'

" Faster navigation
Bundle 'Lokaltog/vim-easymotion'
" Sublime, Emacs-like refactoring
Bundle 'terryma/vim-multiple-cursors'

" :e sudo:/etc/hosts
Bundle 'vim-scripts/sudo.vim'

" Rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rvm'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'slim-template/vim-slim'

" You need to install ack first. Ack is grep-like tool.
Bundle 'mileszs/ack.vim'

" vim-scripts dependency 
Bundle 'Conque-Shell'
Bundle 'L9'

" Utilities
Bundle 'tsaleh/vim-matchit.git'
Bundle 'vim-scripts/tComment'
" Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'

"Files manager
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'FuzzyFinder'
Bundle 'vim-scripts/mru.vim'

"Color scheme
Bundle 'cschlueter/vim-mustang'
Bundle 'godlygeek/csapprox.git'

"Snipmate
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/snipmate-snippets'
Bundle "Shougo/neocomplcache"

"  "Javascript
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'digitaltoad/vim-jade'
" Bundle 'wavded/vim-stylus'
" Bundle 'lukaszb/vim-web-indent'
" Bundle 'mattn/zencoding-vim'
Bundle 'godlygeek/tabular'
" Bundle 'jamescarr/snipmate-nodejs'
" Bundle 'lunaru/vim-less'
" Bundle 'joestelmach/javaScriptLint.vim'
" Bundle 'pangloss/vim-javascript'

" Syntax checking 
" Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-markdown.git'
Bundle "briangershon/html5.vim"
Bundle "sukima/xmledit"
Bundle "indentpython.vim"

filetype plugin indent on     " required! 

"
" Brief help
"
" :BundleInstall  - install bundles (won't update installed)
" :BundleInstall! - update if installed
"
" :Bundles foo    - search for foo
" :Bundles! foo   - refresh cached list and search for foo
"
" :BundleClean    - confirm removal of unused bundles
" :BundleClean!   - remove without confirmation
"
" from shell $ vim +BundleInstall +qall
"
" see :h vundle for more details
" Note: comments after Bundle command are not allowed..
"

" Sets how many lines of history VIM has to remember
set history=1000

" Ignored files
set wildignore=*.swp,*.pyc,*.class,*.hi,*.o

" Set to auto read when a file is changed from the outside
set autowrite

" Tag list
let Tlist_Use_SingleClick=1
let Tlist_Show_Menu=1

set scrolloff=7
set ruler           " Always show current position
set hidden          " Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them

" No sound on errors
set noerrorbells
" Visual bell instead of sound (not to distract colleagues)
set vb
set tm=500

syntax enable "Enable syntax hl

set guioptions-=T
set background=dark
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme mustang
set gfn=Monospace\ 8.7 

set encoding=utf8
try
    lang en_US
catch
endtry

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" Useful when moving accross long lines
map j gj
map k gk

map <silent> <leader><cr> :nohlsearch<cr>

" Surround by apos
nmap <leader>' ysiW'

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

set cmdheight=1               " Explicitly set the height of the command line
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>

" have command-line completion <tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <tab>s cycle through the possibilities
set wildmode=list:longest,full

"--- search options ------------
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters

" Search and error color highlights
hi Search guifg=#ffffff guibg=#0000ff gui=none ctermfg=white ctermbg=darkblue
hi IncSearch guifg=#ffffff guibg=#8888ff gui=none ctermfg=white
highlight SpellBad guifg=#ffffff guibg=#8888ff gui=none ctermfg=black ctermbg=darkred

" Use UTF-8 as the default buffer encoding
set enc=utf-8

" Always show status line, even for one window
set laststatus=2

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Don't request terminal version string (for xterm)
set t_RV=

" Shortcut to Close quickfix window with leader+c
nnoremap <leader>c <CR>:cclose<CR>

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" Ruby (tab width 2 chr)
autocmd FileType ruby set sw=2
autocmd FileType ruby set ts=2
autocmd FileType ruby set sts=2

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" NerdTree and Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTree .<CR>
map <leader>r :NERDTreeToggle<CR>

let g:tagbar_usearrows=1
let g:tagbar_width=30

" MRU shorcuts
map <leader><space> :MRU<CR> 

" CtrlP :p
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
map <leader>f :CtrlP<CR>
map <leader>p :CtrlPMixed<CR>
" FuzzyFinder
map <leader>b :FufBuffer<CR>

" Git Time Lapse
map <leader>gt :call TimeLapse() <cr> 

" Open on single click
let g:NERDTreeMouseMode=3

" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

"--- python formatting help ---
autocmd BufRead *.py set nosmartindent cindent " cinwords=if,elif,else,for,while,try,except,finally,def,class

" Pep8 from : http://sontek.net/turning-vim-into-a-modern-python-ide#id9
" let g:pep8_map='<leader>8'

highlight Pmenu gui=bold

" Configure neocomplcache 
" http://www.vim.org/scripts/script.php?script_id=2620
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_min_syntax_length = 4 

" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown setlocal tw=0

if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" Autoclose quickfix windows when quit
" http://stackoverflow.com/questions/7476126/how-to-automatically-close-the-quick-fix-window-when-leaving-a-file
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Z - cd to recent / frequent directories
command! -nargs=* Z :call Z(<f-args>)
function! Z(...)
  let cmd = 'fasd -d -e printf'
  for arg in a:000
    let cmd = cmd . ' ' . arg
  endfor
  let path = system(cmd)
  if isdirectory(path)
    echo path
    exec 'cd ' . path
  endif
endfunction

:nnoremap <F10> "=strftime("%d.%m.%Y")<CR>P
:inoremap <F10> <C-R>=strftime("%d.%m.%Y")<CR>
