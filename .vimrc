" set spell spelllang=en_us

set keymap=ukrainian-jcuken

" Default - latin layout
set iminsert=0
" Default - latin layout in search mode
set imsearch=0

autocmd User Rails Rnavcommand fabricator spec/fabricators -suffix=_fabricator.rb -default=model()

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader=","
let g:EasyMotion_leader_key = '\'
" Sugar for quickly seeking word
map gw \w
map gs \b

" Close the current buffer
map <leader>d :bd<cr>

" Close all the buffers
" map <leader>ba :1,300 bd!<cr>

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

map ш i
" No autho chdir
" Set default environment based on current edited files
" autocmd BufEnter * silent! lcd %:p:h

" Alternative to Esc from insert mode
imap jj <Esc>:update<cr>

map Q ZQ

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab configuration
map <C-a> :tabprevious<CR>
map <C-e> :tabnext<CR>
map <leader>n :tabnew<cr>

" Set 256 colors in terminal
set t_Co=256 


" Immediate exit CTRL+Q
nmap <C-Q> :qa!<CR>
imap <C-Q> <C-O><C-Q>


" Lets hide modified buffers
set hidden


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

" Jump by space-separated words
" :nmap w W


" List buffers
:map gb :buffers<CR>


" Select words in visual mode with Shift+arrows
nmap <S-Right> vw
nmap <S-Left> vb
" Start visual mode in insert mode
imap <S-Right> <Esc><S-Right>
imap <S-Left> <Esc><S-Left>


" Save file if modified
nmap <F2> :update<CR>
" Return to insert mode after saving (using <C-O>)
" imap <F2> <C-O><F2>
"

" Escape insert mode after saving
imap <F2> <Esc><F2>

" " Save file if modified (2)
" nmap <C-U> :update<CR>
" imap <C-U> <Esc><C-U>

" Save file and add it to git
map <F5> :Gwrite<CR>
imap <F5> <Esc><F5>

" Write and make
map <F6> :update<CR>:! make<CR>
" " Run find
" map <F6> :find<SPACE>
" Escape insert mode 
imap <F6> <Esc><F6>


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
" set si "Smart indet
set wrap "Wrap lines


set nocompatible " be iMproved
filetype off                   " required!




set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

Bundle 'kien/ctrlp.vim'

" Bundle 'vim-scripts/ShowMarks'

" Bundle 'vim-scripts/project.vim'
Bundle 'vim-scripts/taglist.vim'

" Surround text
Bundle 'tpope/vim-surround'
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

" Python development
" Bundle 'vim-scripts/Pydiction'
" Bundle 'kevinw/pyflakes-vim'
Bundle 'vim-scripts/django.vim'

"  "Javascript "
 Bundle 'kchmck/vim-coffee-script'
"  Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
"  Bundle 'lukaszb/vim-web-indent'
" Bundle 'mattn/zencoding-vim'
Bundle 'godlygeek/tabular'
"  Bundle 'jamescarr/snipmate-nodejs'
Bundle 'lunaru/vim-less'
"Bundle 'joestelmach/javaScriptLint.vim'
"  Bundle 'pangloss/vim-javascript'

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
" see :h vundle for more details
" or wiki for FAQ
" Note: comments after Bundle command are not allowed..
"

" HOWTO Installation
" 1. Delete bundle/snipmate.vim/snippets because we will use another updated snippets
" reference : http://cisight.com/solving-snipmate-vim-error-snippet-c-is-already-defined/
" 
" 2. Change Tab as your behaviour between Snipmate and Pydiction :
" http://stackoverflow.com/questions/1687252/with-vim-use-both-snipmate-and-pydiction-together-share-the-tab-key
"
" 3. Fugitive for Github easy connection : http://github.com/tpope/vim-fugitive.git
" 4. NERDTree for file explorer from https://github.com/scrooloose/nerdtree

" Also, i install Python Debugger like pyflakes, pylint and pep8
" Here are related articles : http://dancingpenguinsoflight.com/2009/02/python-and-vim-make-your-own-ide/
" 
" For installing Python debugger :
" sudo pip install pylint
" sudo pip install pyflakes
" sudo pip install pep8
"
"
" There are some well documentation here according into several plugin used : 
" http://sontek.net/turning-vim-into-a-modern-python-ide#basic-editing-and-debugging
" 
" sudo apt-get install vim-scripts

" This configuration taken mixed from many resource and some customed by me :
" Amix.dk ( Founder Plurk )
" http://amix.dk/blog/post/19486#The-ultimate-vim-configuration-vimrc

" GENERAL CONFIGURATION

"
" This is from : http://amix.dk/blog/post/19486#The-ultimate-vim-configuration-vimrc "
"
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Ignore some file
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
set autowrite


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tag list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Use_SingleClick=1
let Tlist_Show_Menu=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=7            " Set 7 lines to the curors - when moving vertical..
set ruler           "Always show current position
set hid             "Change buffer - without saving
" set nohidden

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

map <leader>m :ConqueTermSplit bash<cr>

set shell=/bin/bash

set guioptions-=T
set background=dark
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme mustang
set nonu
set gfn=Monospace\ 8.7 

set encoding=utf8
try
    lang en_US
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" set undodir=~/.vim/undodir
" set undofile
" set undolevels=1000 "maximum number of changes that can be undone
" set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Useful when moving accross long lines
map j gj
map k gk

map <silent> <leader><cr> :nohlsearch<cr>

" Simplified window manipulation
nmap <leader><Up> <C-W><Up>
nmap <leader><Down> <C-W><Down>
nmap <leader><Left> <C-W><Left>
nmap <leader><Right> <C-W><Right>

" Surround by apos
nmap <leader>' ysiw'

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" My CUSTOM 
"
set cmdheight=1               " Explicitly set the height of the command line
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
" set pastetoggle=<F3>          " Press F3 for toggle paste mode

" Paste using ,v in normal mode
nnoremap <leader>v "+gP

" The best thing here! 
" In insert mode, you can paste from clipboard using CTRL+v
inoremap <C-v> <ESC>:set paste<CR>"+gp<ESC>:set nopaste<ENTER>i<RIGHT>

" have command-line completion <tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <tab>s cycle through the possibilities:
set wildmode=list:longest,full

"set nowrap          " no line wrapping;
set guioptions+=b   " add a horizontal scrollbar to the bottom

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

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Don't request terminal version string (for xterm)
set t_RV=

"--- Keystrokes ----------------
" h and l wrap between lines, cursor keys wrap in insertion mode
set whichwrap=h,l,~,[,]

" Enter insert mode and insert a space
noremap <Space> i<Space>
" Delete a word back on backspace 
noremap <BS> db

" allow <BkSpc> to delete line breaks, start of insertion, and indents
set backspace=eol,start,indent


" This is from : http://dancingpenguinsoflight.com/2009/02/python-and-vim-make-your-own-ide/
"

" Toggle line numbers and fold column for easy copying by Pressing F3
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>

" Execute Python file being edited with <Shift> + e:
nnoremap E w:<CR>:!python % <CR>

"  " Execute NodeJS file being edited with <Shift> + n:
"  nnoremap N w:<CR>:!node %<CR>

" Execute javascriptLint on no-JS files like PHP, python, Html with <Shift> + j : 
command! JavaScriptLintChecker call JavascriptLint()
nnoremap J w:<CR>:JavaScriptLintChecker<CR><ENTER><CR>

" Change jsl.conf in ~/.vim/jsl.conf for customization
let jslint_command_options = '-conf ~/.vim/jsl.conf -nofilelisting -nocontext -nosummary -nologo -process'

" Shortcut to Close quickfix window with leader+c
nnoremap <leader>c <CR>:cclose<CR>

" Set autocomplete form 
" set completeopt=menuone,longest,preview

" Enabling Django : https://github.com/robhudson/snipmate_for_django
" autocmd FileType python set ft=python.django " For SnipMate
" autocmd FileType html set ft=htmldjango.html " For SnipMate

" Django Tips from https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
" au BufNewFile,BufRead urls.py      setlocal nowrap
" au BufNewFile,BufRead urls.py      normal! zR
" au BufNewFile,BufRead dashboard.py normal! zR

" au BufNewFile,BufRead admin.py     setlocal filetype=python.django
" au BufNewFile,BufRead urls.py      setlocal filetype=python.django
" au BufNewFile,BufRead models.py    setlocal filetype=python.django
" au BufNewFile,BufRead views.py     setlocal filetype=python.django
" au BufNewFile,BufRead settings.py  setlocal filetype=python.django
" au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
" au BufNewFile,BufRead forms.py     setlocal filetype=python.django
" au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
" au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker

" 
" Django Surround https://code.djangoproject.com/wiki/UsingVimWithDjango
"   'sb' for block
"   'si' for an if statement
"   'sw' for a with statement
"   'sc' for a comment
"   'sf' for a for statement 
"autocmd VimEnter * xunmap s

" let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1%}\r{% endblock %}"
" let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1%}\r{% endif %}"
" let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1%}\r{% endwith %}"
" let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1%}\r{% endcomment %}"
" let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1%}\r{% endfor %}"

" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor"

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml set sw=2
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set sts=2
autocmd FileType xhtml set textwidth=0

" Ruby (tab width 2 chr)
autocmd FileType ruby set sw=2
autocmd FileType ruby set ts=2
autocmd FileType ruby set sts=2

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Folding
" auto save folding : http://princ3.wordpress.com/2007/01/26/automaticaly-save-foldings-in-vim/
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
autocmd BufWinLeave .* mkview
autocmd BufWinEnter .* silent loadview 

autocmd Syntax c,cpp,vim,xml,html,xhtml,js,rb,py,python setlocal foldmethod=manual
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree and Tagbar

" Binds F8 to tagbar plugin
nmap <F8> :TagbarToggle<CR>

" Opens tree view
nmap <F7> :NERDTree .<CR>


" TagBar Configuration
let g:tagbar_usearrows=1
let g:tagbar_width=30
" nnoremap <leader>t :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FuzzFinder Shorcuts. Using F4 for opening FuzzyFinderTextMate
" map <leader>f :FufFileWithCurrentBufferDir<CR>
map <F4> :FufFileWithFullCwd<CR>
map <leader>b :FufBuffer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU shorcuts
map <leader><space> :MRU<CR> 

" CtrlP :p
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMixed<CR>
map <leader>p :CtrlPMixed<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

""""""""""""""""""""""""""""""""""""""""""""
" NERDTree : https://github.com/scrooloose/nerdtree.git
" MODIFYING NERDTree MY CUSTOM
" how to using NERDTree : http://ykyuen.wordpress.com/2011/04/04/nerdtree-the-file-explorer-in-vivim/
"""""""""""""""""""""""""""""""""""""""""""

" Enable this for make NERDTree load every opening files
" autocmd VimEnter * NERDTree         " Make Always Load NERDTree every opening files
" autocmd VimEnter * wincmd p         " Automatically go to buffer every time open files

" FIXING NERDTree, automatically close if there no file edited 
"https://github.com/scrooloose/nerdtree/issues/21
"
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
map <leader>r :NERDTreeToggle<CR>

" Open on single click
let g:NERDTreeMouseMode=3

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
"
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif


""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

"""" PYTHON STYLE """"
let python_highlight_all=1 " Enable all plugin's highlighting.
let python_slow_sync=1 " For fast machines.
let python_print_as_function=1 " Color 'print' function.

"" PYTHON auto completion from http://blog.dispatched.ch/2009/05/24/vim-as-python-ide/

"--- python formatting help ---
autocmd BufRead *.py set nosmartindent cindent " cinwords=if,elif,else,for,while,try,except,finally,def,class

" let g:pyflakes_use_quickfix = 1 " Enable Pyflakes

" Pep8 from : http://sontek.net/turning-vim-into-a-modern-python-ide#id9
"
let g:pep8_map='<leader>8'

highlight Pmenu gui=bold

" Configure neocomplcache 
" http://www.vim.org/scripts/script.php?script_id=2620
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_min_syntax_length = 4 

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown,ctp setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php,ctp setlocal omnifunc=phpcomplete#CompletePHP
" autocmd FileType vim set omnifunc=syntaxcomplete#Complete
" 
"from https://github.com/chronon/dot-vim/blob/master/vimrc

" http://stackoverflow.com/questions/1747091/how-do-you-use-vims-quickfix-feature
" autocmd BufWritePost,FileWritePost *.html call JavascriptLint()
" autocmd BufWritePost,FileWritePost *.jade call JavascriptLint()
" autocmd BufWritePost,FileWritePost *.ctp call JavascriptLint()

" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown setlocal tw=0

" Enable heavy omni completion.
" if !exists('g:neocomplcache_omni_patterns')
"     let g:neocomplcache_omni_patterns = {}
" endif

" let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
function RubyEndToken ()
  let current_line = getline( '.' )
  let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
  let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
  let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'

  if match(current_line, braces_at_end) >= 0
    return "\<CR>}\<C-O>O" 
  elseif match(current_line, stuff_without_do) >= 0
    return "\<CR>end\<C-O>O" 
  elseif match(current_line, with_do) >= 0
    return "\<CR>end\<C-O>O" 
  else
    return "\<CR>" 
  endif
endfunction

" imap <buffer> <CR> <C-R>=RubyEndToken()<CR>

if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

" for Syntastic
" let g:syntastic_auto_loc_list=1 "Auto open errors window upon detection
" let g:syntastic_enable_signs=1
" " let g:syntastic_auto_jump=1
" let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
" let g:syntastic_enable_balloons=1 

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

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

" http://stackoverflow.com/questions/1687252/with-vim-use-both-snipmate-and-pydiction-together-share-the-tab-key "
" Change share keys between pydiction and snipmate
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
if has("gui_running")
    " Vimdiff colorscheme
    highlight DiffAdd cterm=none ctermfg=bg ctermbg=Green gui=none guifg=bg guibg=Green
    highlight DiffDelete cterm=none ctermfg=bg ctermbg=Red gui=none guifg=bg guibg=Red
    highlight DiffChange cterm=none ctermfg=bg ctermbg=Yellow gui=none guifg=bg guibg=Yellow
    highlight DiffText cterm=none ctermfg=bg ctermbg=Magenta gui=none guifg=bg guibg=Magenta
endif


"  PHP stuff

"  " cakephp
"  autocmd BufEnter,BufRead {controllers,models,views,plugins,lib}/* set ft=php.cakephp
"  autocmd BufEnter,BufRead {Controller,Model,View,Plugin,Lib}/* set ft=php.cakephp
"  autocmd FileType php,php.cakephp set commentstring=//\%s
"  autocmd FileType html set commentstring=<!--%s-->

" tabs, not spaces for php, ctp
au BufEnter,BufRead *.php,*.ctp setlocal noexpandtab

"  "---- PHP executing shortcut --"
"  " Execute PHP file being edited with <Shift> + p:
"  nnoremap P w:<CR>:!/usr/bin/php5 % <CR>

"  " You might also find this useful
"  " PHP Generated Code Highlights (HTML & SQL)                                              
"  let php_sql_query=1                                                                                        
"  let php_htmlInStrings=1
"

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
