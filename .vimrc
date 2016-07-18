" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
      set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" NeoBundles
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'ryanoasis/vim-devicons'

NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'henrik/vim-reveal-in-finder'
NeoBundle 'jiangmiao/auto-pairs'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'matze/vim-move'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'godlygeek/tabular'
NeoBundle 'junegunn/fzf'

" IDE
NeoBundle 'vim-scripts/BufOnly.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'vim-scripts/Vim-R-plugin'
NeoBundle 'mattreduce/vim-mix'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'Matt-Deacalion/vim-systemd-syntax'
NeoBundle 'vim-scripts/ShowTrailingWhitespace'
NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
"NeoBundle 'xolox/vim-misc'
"NeoBundle 'xolox/vim-shell'
"NeoBundle 'xolox/vim-session'
NeoBundle 'szw/vim-ctrlspace'
NeoBundle 'rking/ag.vim'
NeoBundle 'Glench/Vim-Jinja2-Syntax'
" NeoBundle 'kovetskiy/next-indentation'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'cespare/vim-toml'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\   },
\ }
NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Valloric/YouCompleteMe', {
"     \ 'build'      : {
"        \ 'mac'     : './install.sh',
"        \ 'unix'    : './install.sh',
"        \ 'windows' : './install.sh',
"        \ 'cygwin'  : './install.sh'
"        \ }
"     \ }

" Tmux
NeoBundle 'benmills/vimux'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'edkolev/tmuxline.vim'
" Python
NeoBundle 'jmcantrell/vim-virtualenv'
" Snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
" Colors
" NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'NLKNguyen/papercolor-theme'
" Syntax
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'groenewege/vim-less'
NeoBundle 'beyondwords/vim-twig'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-haml'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'tpope/vim-liquid'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'fatih/vim-go'
NeoBundle 'chase/vim-ansible-yaml'

call neobundle#end()


"""""""""""""
" Basics
""""""""""""

syntax on
set background=dark
set ruler                     " Show the line number on the bar
set showmatch                 " Show matching parenthesis
set more                      " Use more prompt
set autoread                  " Watch for file changes
set confirm                   " Dialog Box to Confirm
set number                    " Display Line Numbers
set laststatus=2
set nobinary                    " insert a newline at the end of the document (Unless there already is one)
set hidden                    " Re-use the same window and switch from an unsaved buffer without saving it first
set showmode
set showcmd                   " Show partial commands in the last line of the Screen
set wildmenu                  " Better command line completion
set autoindent smartindent    " Auto/smart indent
set pastetoggle=<F2>
set wrap                      " Wrap lines
set linebreak
" note trailing space at end of next line
set showbreak=>\ \ \
set smarttab                  " Tab and Backspace are smart
set tabstop=4                 " 6 spaces
set shiftwidth=4
set expandtab                 " Using spaces instead of tabs
set hlsearch                  " Highlist Searches
set ignorecase smartcase      " Use case insensitive Search, except when using capital letters
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
" set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=zsh
set modifiable
set fileformats=unix
set ff=unix
set fileencodings=utf-8
set mouse=nicr
if &term =~ '^screen' && !has('nvim')
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
"" Things like whitespace
set list
set linespace=3
set formatoptions=qrn1
set formatoptions+=w
set cursorline
" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

"" show where line ends
"" use gq to apply formatting
set textwidth=80
set colorcolumn=81

if !has('nvim')
    set term=screen-256color
endif

if exists('&regexpengine')
  set regexpengine=1
endif

au BufRead,BufNewFile *.md setlocal formatoptions+=ct

" set scss files RIGHT
au BufRead,BufNewFile *.scss set filetype=scss

" au VimEnter * so $HOME/.vimrc  " Uncomment: OSX does not get mouse events.
"let g:nerdtree_tabs_open_on_console_startup=1
autocmd vimenter * NERDTree
map <C-x> :NERDTreeToggle<CR>
let g:gitgutter_enabled = 1

"" who even wants swap files???
set noswapfile
set nobackup
set nowb

"" what mode is i am?
set showmode

"" display things like newlines, carriage returns, whitespace, etc...
set listchars=""
set listchars+=tab:▸\
" set listchars+=eol:¬
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

"" search settings
set incsearch
nmap <silent> ,/ :nohlsearch<CR>
hi Search    cterm=NONE ctermfg=white ctermbg=5

"" undo forever and ever
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"" wildcard settings
set wildignore+=*.o,*.out,*.obj,*.rbc,*.rbo,*.class,*.gem,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*
set wildignore+=*/node_modules/*,*/bower_components/*,*/dist/*,*/img/*,*/images/*
set wildignore+=*/env/*,*/venv/*,*/devenv/*,*/__pycache__/*,*/.divshot-cache/*
set wildignore+=.DS_Store

"" set <leader> to ,
let mapleader = ","
set timeoutlen=500

"" enable code folding
set foldenable
set foldmethod=syntax
set foldlevelstart=99

"" hide mouse when typing
set mousehide

"" split windows below the current window.
set splitbelow

"" session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

""" CtrlSpace
nnoremap <silent><C-p> :CtrlSpace O<CR>
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
let g:CtrlSpaceUseMouseAndArrowsInTerm = 1

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

"" yank text to the OS X clipboard
set clipboard^=unnamed

" Set tag file location
set tags+=.git/tags


" Open new split panes to right and bottom. More natural than default:
set splitbelow
set splitright

filetype on                   " Enable filetype detection

filetype indent on            " Enable filetype-specific indenting
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype coffee setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
"execute pathogen#infect()
set guifont=Inconsolata\ for\ Powerline:h11
set t_Co=256
" let g:solarized_termcolors=256
colorscheme PaperColor " solarized

let g:neobundle#install_process_timeout = 1500
"""""""""""""
" Mapping
""""""""""""

nnoremap { :IndentationGoUp<CR>
nnoremap } :IndentationGoDown<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap > >gv
vnoremap < <gv

" Yank till end of line
map Y y$

" Map <C-L> (redraw screen) to turn off search highlighting until the next
" search
nnoremap <C-L> :nohl<CR><C-L>

" Map <Space> to / (Search) and <Ctrl>+<Space) for ? (Backward Search)
map <space> /
map <c-space> ?

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


"" map escape key to jk -- much faster
"  also, <C-c> and <C-[>
imap jk <esc>
imap jj <esc>
imap kk <esc>

"" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-w>M <C-w>\| <C-w>_
nnoremap <C-w>m <C-w>=

nnoremap <silent> <C-z> :FZF<CR>

" Visually select the text that was last edited/pasted
nmap gV `[v`]



"" highlight brackets
hi MatchParen cterm=bold ctermbg=darkmagenta ctermfg=white


"" preserve indentation while pasting text from the OS X clipboard
"" use ,p dummy
noremap <Leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>


"" kill all trailing whitespace
function! <SID>RemoveWhitespaces()
  let l = line(".")
  let c = col(".")
  execute '%s/\s\+$//e'
  call cursor(l, c)
endfunction
nnoremap <silent> <Leader><Space> :call <SID>RemoveWhitespaces()<CR>

" au BufRead * %s/\r//ge
nnoremap <Leader>s :wa<CR>
inoremap <silent> <C-s> <Esc>:wa<CR>
nnoremap <Leader>q :qa<CR>
inoremap <silent> <C-q> <Esc>:qa<CR>

" Remove white spaces on write
augroup AutoRemoveWhitespace
  autocmd!
  autocmd BufWritePre * :call <SID>RemoveWhitespaces()
augroup END

" autocmd BufWritePre * :%s/\s\+$//e

"" up/down keys move by row, rather than line
nnoremap j gj
nnoremap k gk

"" bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

"" bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Teach vim to syntax highlight Vagrantfile as ruby
augroup vagrant
  au!
  au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

"" Reload .vimrc after editing and saving
augroup AutoSourceVimrc
  autocmd!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

" Leader-v to edit vimrc
nmap <Leader>v :e $MYVIMRC<CR>

" Buffer switching
nnoremap <Leader><Leader> <c-^>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

" window
"nmap <leader>kh  :topleft  vnew<CR>
"nmap <leader>kl :botright vnew<CR>
"nmap <leader>    :topleft  new<CR>
"nmap <leader>zwj  :botright new<CR>
" buffer
nnoremap <leader>h   :leftabove  vnew<CR>:FZF<CR>
nnoremap <leader>l  :rightbelow vnew<CR>:FZF<CR>
nnoremap <leader>k     :leftabove  new<CR>:FZF<CR>
nnoremap <leader>j   :rightbelow new<CR>:FZF<CR>

" Buffer closing (without deleting split)
nnoremap <silent> <Leader>d :bp<Bar>bd #<CR>



" CTAGS  -------------------------------------------------------------------

" Function to regenerate tag file
function! FlushCtags()
  silent! exe ":!ctags ."
endfunction

" mapping to regenerate tags file
" silent! nnoremap <silent> TT :call FlushCtags()<CR>

" mapping to toggle tagbar
" nnoremap <Leader>. :TagbarToggle<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" mapping to use ctrlp tags function
" nnoremap <silent> <Leader>b :CtrlPTag<CR>
" nnoremap <Leader>. :CtrlPTag<CR>

"" PLUGINS -------------------------------------------------------------------

"NERDTree
let g:NERDTreeMouseMode = 3
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

let NERDTreeIgnore = ['\.pyc$']

""""""""""""""
"NEOCOMPLETE

let g:neocomplete#use_vimproc = 1
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#buffer#max_keyword_width = 60
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : neocomplete#start_manual_complete()

inoremap <expr><C-@> pumvisible() ? "\<C-n>" : neocomplete#start_manual_complete()
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<BS>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
set completeopt-=preview
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'



" Airline, a powerline replacement
let g:airline_powerline_fonts = 1
" let g:airline_section_b = '%{getcwd()}'
" let g:airline_section_c = '%t'
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
"let g:airline_theme = "sol"
let g:airline_theme = "PaperColor"

"" Blockify
let g:blockify_pairs = {
      \ 'c':    [ '{', '}' ],
      \ 'cpp':  [ '{', '}' ],
      \ 'java': [ '{', '}' ],
      \ 'php': [ '{', '}' ],
      \ 'css': [ '{', '}' ],
      \ 'scss.css': [ '{', '}' ],
      \ 'scss': [ '{', '}' ],
      \ 'javascript': [ '{', '}' ],
      \ 'php.drupal': [ '{', '}' ],
      \}

"" Numbers
let g:numbers_exclude = ['nerdtree']

"" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_javascript_checkers = ['jshint']

"" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

"" Ctrlp
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_extensions = ['tag']
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"" Tagbar
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

"" Options to add support for Coffeescript
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
    \ }

"" Options to add support for Go
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

"" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"" Vimux
" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

"" Colors and type------------------------------------------------------------
if has('gui_running')
  set go-=T
endif
