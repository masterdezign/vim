" set spell spelllang=en_us

set keymap=ukrainian-jcuken

" Default - latin layout
set iminsert=0
" Default - latin layout in search mode
set imsearch=0

" Haskell-vim-now integrated
" General {{{
" use indentation for folds
set foldmethod=indent
set foldnestmax=5
set foldlevelstart=99
set foldcolumn=0
" Sets how many lines of history VIM has to remember
set history=700
" Set to auto read when a file is changed from the outside
set autoread
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" Leader key timeout
set tm=1000
" Allow the normal use of "," by pressing it twice
noremap ,, ,
" Use par for prettier line formatting
set formatprg="PARINIT='rTbgqR B=.,?_A_a Q=_s>|' par\ -w72"
" " Use stylish haskell instead of par for haskell buffers
" autocmd FileType haskell let &formatprg="stylish-haskell"
" Find custom built ghc-mod, codex etc
let $PATH = $PATH . ':' . expand("~/.haskell-vim-now/bin")
" }}}
" Vundle {{{
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
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" Support bundles
Bundle 'jgdavey/tslime.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'moll/vim-bbye'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/gitignore'
" Git
Bundle 'tpope/vim-fugitive'
Bundle 'int3/vim-extradite'
" Bars, panels, and files
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
" Text manipulation
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/Gundo'
Bundle 'tpope/vim-commentary'
Bundle 'godlygeek/tabular'
Bundle 'michaeljsmith/vim-indent-object'
" Allow pane movement to jump out of vim into tmux
Bundle 'christoomey/vim-tmux-navigator'
" Haskell
Bundle 'raichoo/haskell-vim'
Bundle 'enomsg/vim-haskellConcealPlus'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'eagletmt/neco-ghc'
Bundle 'Twinside/vim-hoogle'
" Custom bundles
Bundle 'vim-scripts/git-time-lapse'
Bundle 'lervag/vim-latex'
" Bundle 'Shougo/neocomplete.vim'
" Bundle 'vim-scripts/ShowMarks'
" Bundle 'vim-scripts/project.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'Lokaltog/vim-easymotion'
  " Sublime, Emacs-like refactoring
Bundle 'terryma/vim-multiple-cursors'  
  " :e sudo:/etc/hosts
Bundle 'vim-scripts/sudo.vim'  
" " Rails
" Bundle 'tpope/vim-rails'
" Bundle 'tpope/vim-rvm'
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'slim-template/vim-slim'
" Install ack first. Ack is grep-like tool.
Bundle 'mileszs/ack.vim'
" vim-scripts dependency 
Bundle 'Conque-Shell'
Bundle 'L9'
" Utilities
Bundle 'vim-scripts/tComment'
" Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
"Snipmate
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/snipmate-snippets'
"  "Javascript
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'digitaltoad/vim-jade'
" Bundle 'wavded/vim-stylus'
" Bundle 'lukaszb/vim-web-indent'
" Bundle 'mattn/zencoding-vim'
" Bundle 'jamescarr/snipmate-nodejs'
" Bundle 'lunaru/vim-less'
" Bundle 'joestelmach/javaScriptLint.vim'
" Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown.git'
" Bundle "briangershon/html5.vim"
Bundle "sukima/xmledit"
Bundle "indentpython.vim"

" End bundles


if filereadable(expand("~/.vim.local/bundles.vim"))
source ~/.vim.local/bundles.vim
endif
" }}}
" VIM user interface {{{
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Turn on the WiLd menu
set wildmenu                  " Menu completion in command mode on <Tab>
" Tab-complete files up to longest unambiguous prefix
set wildmode=list:longest,full
" Always show current position
set ruler
set number  " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
" Show trailing whitespace
set list
" set list!
" But only interesting whitespace
if &listchars ==# 'eol:$'
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
" Height of the command bar
set cmdheight=1
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" " No annoying sound on errors
" set noerrorbells
" set vb t_vb=
if &term =~ '256color'
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
set t_ut=
endif
" Force redraw
map <silent> <leader>r :redraw!<CR>
" Turn mouse mode on
nnoremap <leader>ma :set mouse=a<cr>
" Turn mouse mode off
nnoremap <leader>mo :set mouse=<cr>
" Default to mouse mode on
if has('mouse')
  set mouse=a
endif
" }}}
" Colors and Fonts {{{
Bundle 'vim-scripts/wombat256.vim'
try
colorscheme wombat256mod
catch
endtry

" Bundle 'godlygeek/csapprox.git'
" set background=dark
" let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
" Bundle 'cschlueter/vim-mustang'
" try
" colorscheme mustang
" catch
" endtry

" Enable syntax highlighting
syntax enable
" Adjust signscolumn and syntastic to match wombat
hi! link SignColumn LineNr
hi! link SyntasticErrorSign ErrorMsg
hi! link SyntasticWarningSign WarningMsg
" Use pleasant but very visible search hilighting
hi Search ctermfg=white ctermbg=173 cterm=none guifg=#ffffff guibg=#e5786d gui=none
hi! link Visual Search
" Enable filetype plugins
filetype plugin on
filetype indent on
" Match wombat colors in nerd tree
hi Directory guifg=#8ac6f2
" Searing red very visible cursor
hi Cursor guibg=red
" Use same color behind concealed unicode characters
hi clear Conceal
" Don't blink normal mode cursor
set guicursor=n-v-c:block-Cursor
set guicursor+=n-v-c:blinkon0
" Set extra options when running in GUI mode
if has("gui_running")
set guioptions-=T
set guioptions-=e
set guitablabel=%M\ %t
endif
" Set 256 colors in terminal
set t_Co=256
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
try
    lang en_US
catch
endtry
" Use Unix as the standard file type
set ffs=unix,dos,mac
" Use large font by default in MacVim
" set gfn=Monospace\ 8.7 
" set gfn=Monaco:h19
" }}}
" Files, backups and undo {{{
" Turn backup off, since most stuff is in Git anyway...
set nobackup
set nowb
set noswapfile
" Source the vimrc file after saving it
augroup sourcing
autocmd!
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc
" autocmd bufwritepost .vimrc source $MYVIMRC
augroup END
" Open file prompt with current path
nmap <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
" Show undo tree
nmap <silent> <leader>u :GundoToggle<CR>
" Fuzzy find files
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_max_files=0
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
map <leader>f :CtrlP<CR>
map <leader>p :CtrlPMixed<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader><space> :CtrlPMRU<CR>
" nnoremap <silent> <Leader><space> :CtrlP<CR>
" }}}
" Text, tab and indent related {{{
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
" Linebreak on 80 characters
set lbr
set tw=80
set ai "Auto indent
" set si "Smart indent
set wrap "Wrap lines
" Pretty unicode haskell symbols
let g:haskell_conceal_wide = 1
let g:haskell_conceal_enumerations = 1
" }}}
" Visual mode related {{{
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>
" }}}
" Moving around, tabs, windows and buffers {{{
" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk
" noremap <c-h> <c-w>h
" noremap <c-k> <c-w>k
" noremap <c-j> <c-w>j
" noremap <c-l> <c-w>l
" Disable highlight when <leader><cr> is pressed
" but preserve cursor coloring
nmap <silent> <leader><cr> :noh\|hi Cursor guibg=red<cr>
" map <silent> <leader><cr> :nohlsearch<cr>
augroup haskell
autocmd!
autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>:SyntasticReset<cr>
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup END
" Return to last edit position when opening files (You want this!)
augroup last_edit
autocmd!
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal! g`\"" |
\ endif
augroup END
" Remember info about open buffers on close
set viminfo^=%
" Open window splits in various places
nmap <leader>sh :leftabove vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove new<CR>
nmap <leader>sj :rightbelow new<CR>
" Manually create key mappings (to avoid rebinding C-\)
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" don't close buffers when you aren't displaying them
set hidden
" " previous buffer, next buffer
" nnoremap <leader>bp :bp<cr>
" nnoremap <leader>bn :bn<cr>
" delete buffer without closing pane
noremap <leader>d :Bd<cr>
" }}}
" Status line {{{
" Always show the status line
set laststatus=2
" }}}
" Editing mappings {{{
" Delete trailing white space on save
func! DeleteTrailingWS()
exe "normal mz"
%s/\s\+$//ge
exe "normal `z"
endfunc
augroup whitespace
autocmd!
autocmd BufWrite *.hs :call DeleteTrailingWS()
augroup END
" }}}
" Spell checking {{{
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" }}}
" Helper functions {{{
function! CmdLine(str)
exe "menu Foo.Bar :" . a:str
emenu Foo.Bar
unmenu Foo
endfunction
function! VisualSelection(direction, extra_filter) range
let l:saved_reg = @"
execute "normal! vgvy"
let l:pattern = escape(@", '\\/.*$^~[]')
let l:pattern = substitute(l:pattern, "\n$", "", "")
if a:direction == 'b'
execute "normal ?" . l:pattern . "^M"
elseif a:direction == 'gv'
call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.' . a:extra_filter)
elseif a:direction == 'replace'
call CmdLine("%s" . '/'. l:pattern . '/')
elseif a:direction == 'f'
execute "normal /" . l:pattern . "^M"
endif
let @/ = l:pattern
let @" = l:saved_reg
endfunction
" }}}
" Slime {{{
vmap <silent> <Leader>rs <Plug>SendSelectionToTmux
nmap <silent> <Leader>rs <Plug>NormalModeSendToTmux
nmap <silent> <Leader>rv <Plug>SetTmuxVars
" }}}
" NERDTree {{{
" Close nerdtree after a file is selected
" let NERDTreeQuitOnOpen = 1
function! IsNERDTreeOpen()
return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
function! ToggleFindNerd()
if IsNERDTreeOpen()
exec ':NERDTreeToggle'
else
exec ':NERDTreeFind'
endif
endfunction
" If nerd tree is closed, find current file, if open, close it
nmap <silent> <leader>f <ESC>:call ToggleFindNerd()<CR>
nmap <silent> <leader>F <ESC>:NERDTreeToggle<CR>
" }}}
" Alignment {{{
" Stop Align plugin from forcing its mappings on us
let g:loaded_AlignMapsPlugin=1
" Align on equal signs
map <Leader>a= :Align =<CR>
" Align on commas
map <Leader>a, :Align ,<CR>
" Align on pipes
map <Leader>a<bar> :Align <bar><CR>
" Prompt for align character
map <leader>ap :Align
" Enable some tabular presets for Haskell
let g:haskell_tabular = 1
" }}}
" Tags {{{
set tags=tags;/,codex.tags;/
let g:tagbar_type_haskell = {
\ 'ctagsbin' : 'hasktags',
\ 'ctagsargs' : '-x -c -o-',
\ 'kinds' : [
\ 'm:modules:0:1',
\ 'd:data: 0:1',
\ 'd_gadt: data gadt:0:1',
\ 't:type names:0:1',
\ 'nt:new types:0:1',
\ 'c:classes:0:1',
\ 'cons:constructors:1:1',
\ 'c_gadt:constructor gadt:1:1',
\ 'c_a:constructor accessors:1:1',
\ 'ft:function types:1:1',
\ 'fi:function implementations:0:1',
\ 'o:others:0:1'
\ ],
\ 'sro' : '.',
\ 'kind2scope' : {
\ 'm' : 'module',
\ 'c' : 'class',
\ 'd' : 'data',
\ 't' : 'type'
\ },
\ 'scope2kind' : {
\ 'module' : 'm',
\ 'class' : 'c',
\ 'data' : 'd',
\ 'type' : 't'
\ }
\ }
" Generate haskell tags with codex and hscope
map <leader>tg :!codex update --force<CR>:call system("git hscope -X TemplateHaskell")<CR><CR>:call LoadHscope()<CR>
map <leader>tt :TagbarToggle<CR>
set csprg=~/.haskell-vim-now/bin/hscope
set csto=1 " search codex tags first
set cst
set csverb
nnoremap <silent> <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
" Automatically make cscope connections
function! LoadHscope()
let db = findfile("hscope.out", ".;")
if (!empty(db))
let path = strpart(db, 0, match(db, "/hscope.out$"))
set nocscopeverbose " suppress 'duplicate connection' error
exe "cs add " . db . " " . path
set cscopeverbose
endif
endfunction
au BufEnter /*.hs call LoadHscope()
" }}}
" Git {{{
let g:extradite_width = 60
" Hide messy Ggrep output and copen automatically
function! NonintrusiveGitGrep(term)
execute "copen"
" Map 't' to open selected item in new tab
execute "nnoremap <silent> <buffer> t <C-W><CR><C-W>T"
execute "silent! Ggrep " . a:term
execute "redraw!"
endfunction
command! -nargs=1 GGrep call NonintrusiveGitGrep(<q-args>)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gg :copen<CR>:GGrep
nmap <leader>gl :Extradite!<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gb :Gblame<CR>
function! CommittedFiles()
" Clear quickfix list
let qf_list = []
" Find files committed in HEAD
let git_output = system("git diff-tree --no-commit-id --name-only -r HEAD\n")
for committed_file in split(git_output, "\n")
let qf_item = {'filename': committed_file}
call add(qf_list, qf_item)
endfor
" Fill quickfix list with them
call setqflist(qf_list, '')
endfunction
" Show list of last-committed files
nnoremap <silent> <leader>g? :call CommittedFiles()<CR>:copen<CR>
" }}}
" Haskell Interrogation {{{
set completeopt+=longest
" Use buffer words as default tab completion
let g:SuperTabDefaultCompletionType = '<c-x><c-p>'
" But provide (neco-ghc) omnicompletion
if has("gui_running")
imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
if has("unix")
inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
endif
endif
" Show types in completion suggestions
let g:necoghc_enable_detailed_browse = 1
" Type of expression under cursor
nmap <silent> <leader>ht :GhcModType<CR>
" Insert type of expression under cursor
nmap <silent> <leader>hT :GhcModTypeInsert<CR>
" GHC errors and warnings
nmap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>
" Haskell Lint
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['haskell'] }
nmap <silent> <leader>hl :SyntasticCheck hlint<CR>
" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>
" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle
" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hi :HoogleInfo<CR>
" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hI :HoogleInfo
" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>
" }}}
" Conversion {{{
function! Pointfree()
call setline('.', split(system('pointfree '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h. :call Pointfree()<CR>
function! Pointful()
call setline('.', split(system('pointful '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h> :call Pointful()<CR>
" }}}
" Customization {{{
if filereadable(expand("~/.vimrc.local"))
source ~/.vimrc.local
endif
" }}}


" Sugar for quickly seeking a word
map gw \w
map gs \b

" Paste using ,v in normal mode
nnoremap <leader>v "+gP
" In insert mode, paste from clipboard using CTRL+v
inoremap <C-v> <ESC>:set paste<CR>"+gp<ESC>:set nopaste<ENTER>i<RIGHT>

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>q :e! ~/.vimrc<cr>

" Alternative to Esc from insert mode
imap jj <Esc>:update<cr>

map Q ZQ

" Tab configuration
map <C-a> :tabprevious<CR>
map <C-e> :tabnext<CR>
map <leader>n :tabnew<cr>

" Delete word after the cursor including space after it in insert mode
:imap <C-D> <C-O>dw

" CTRL+K to delete until the end of line
:imap <C-K> <C-O>D

" List buffers
:map gb :buffers<CR>

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

" Ignored files
set wildignore=*.swp,*.pyc,*.class,*.hi,*.o

" Set to auto read when a file is changed from the outside
set autowrite

" Tag list
let Tlist_Use_SingleClick=1
let Tlist_Show_Menu=1

" Surround by apos
nmap <leader>' ysiW'

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" " Search and error color highlights
" hi Search guifg=#ffffff guibg=#0000ff gui=none ctermfg=white ctermbg=darkblue
" hi IncSearch guifg=#ffffff guibg=#8888ff gui=none ctermfg=white
" highlight SpellBad guifg=#ffffff guibg=#8888ff gui=none ctermfg=black ctermbg=darkred

" Use UTF-8 as the default buffer encoding
set enc=utf-8

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

" Python (tab width 4 chr)
autocmd FileType python set sw=4
autocmd FileType python set ts=4

" Ruby (tab width 2 chr)
autocmd FileType ruby set sw=2
autocmd FileType ruby set ts=2
autocmd FileType ruby set sts=2

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" Syntastic VHDL
let g:syntastic_vhdl_ghdl_args = '--ieee=synopsys'

" NerdTree and Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTree .<CR>
map <leader>r :NERDTreeToggle<CR>

let g:tagbar_usearrows=1
let g:tagbar_width=30

" Git Time Lapse
map <leader>gt :call TimeLapse() <cr> 

" Open on single click
let g:NERDTreeMouseMode=3

" " http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
" if exists(":Tabularize")
"   nmap <Leader>a= :Tabularize /=<CR>
"   vmap <Leader>a= :Tabularize /=<CR>
"   nmap <Leader>a: :Tabularize /:\zs<CR>
"   vmap <Leader>a: :Tabularize /:\zs<CR>
" endif

"--- python formatting help ---
autocmd BufRead *.py set nosmartindent cindent " cinwords=if,elif,else,for,while,try,except,finally,def,class

" Pep8 from : http://sontek.net/turning-vim-into-a-modern-python-ide#id9
" let g:pep8_map='<leader>8'

highlight Pmenu gui=bold

" Configure neocomplete
" let g:neocomplete_enable_at_startup = 1

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
" autocmd BufWritePre *.hs :%s/\s\+$//e
autocmd BufWritePre *.vhd :%s/\s\+$//e

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
