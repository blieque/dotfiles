" un-Bram this software
set nocompatible

" BUNDLING

" vundle config, bundling
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage itself
Bundle 'gmarik/vundle'

" change vim behaviour
Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'

" make editing easier
"Bundle 'jelera/vim-javascript-syntax'
Bundle 'digitaltoad/vim-pug'
Bundle 'jiangmiao/auto-pairs'
Bundle 'mattn/emmet-vim'
Bundle 'vim-syntastic/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-sleuth'
Bundle 'posva/vim-vue'
" hot damn
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

" make things perty
Bundle 'jeaye/color_coded'
Bundle 'justinmk/vim-syntax-extra'
Bundle 'StanAngeloff/php.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'

" color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'KeitaNakamura/neodark.vim'
Bundle 'jansenfuller/crayon'
Bundle 'vivkin/flatland.vim'
Bundle 'dikiaap/minimalist'
Bundle 'zacanger/angr.vim'
Bundle 'kamwitsta/nordisk'
Bundle 'kamwitsta/mythos'
Bundle 'zeis/vim-kolor'

" PLUGIN STUFF

" load emmet
autocmd FileType html,php,markdown,css,sass,scss EmmetInstall

" colours
filetype plugin indent on
syntax enable

set background=dark
let g:solarized_termcolors = 256

colorscheme solarized
" retains colours even when reloading .vimrc (no need to reload .gvimrc too)
if has("gui_running")
    colorscheme flatland
endif

" SETTING
" (various vim options to how I like them)

set number                              " line numbers
set autoindent                          " nice auto-indentation
set autoread                            " read changes (handy when git updates files)
set lazyredraw                          " minimal screen redrawing
set incsearch                           " auto-complete searching
set ignorecase                          " case-insensitive searching
set cursorline                          " highlight cursor line
set modeline                            " let modelines be used (for root user too)
set hlsearch                            " highlight search matches
set wildmenu                            " wild menu tab completion
set mousef                              " it's like terminator!
set mouse=a                             " i'm casual, k?
set mousehide                           " hidden mouse for typing
set expandtab                           " spaces, not tabs
set nowrap                              " disable wrapping by default
set whichwrap+=h,l,<,>,[,]              " easily wrap cursor to next and previous lines
set linebreak                           " wrap at spaces between words
set tabstop=4                           " 4 space-wide tabs
set shiftwidth=4                        " shift-width, indentation
set scrolloff=10                        " keep at least 10 lines above below cursor, eases scrolling
set sidescroll=16                       " as above, but horizontal and 16 columns
set spelllang=en_gb                     " set spellchecking to british english
set virtualedit=onemore                 " cursor can sit on the EOL character
set timeoutlen=450                      " quicker key sequences, as default is 1000
set tabpagemax=100                      " open more tabs at once with '-p'
set viminfo=                            " no mo' .viminfo
set list                                " use custom special strings
set listchars=tab:\ \ ,trail:·,extends:… " show dots for trailing spaces, and other stuff
set omnifunc=syntaxcomplete#Complete    " suddenly i feel like vim can be taken seriously

set noswapfile                          " disable swap files
set backupdir=~/.vim/tmp,.              " prevent vim from cluttering working directories
set directory=~/.vim/tmp,.              " ditto

" LETTING
" (this is mostly plugin configuration)

" customise leader key
let mapleader = "'"

" multi-cursor key bindings
let g:multi_cursor_next_key = '<C-s>'
let g:multi_cursor_prev_key = '<C-a>'
let g:multi_cursor_skip_key = '<C-d>'
let g:multi_cursor_quit_key = '<C-x>'

" emmet key bindings and config
let g:user_emmet_leader_key = ','
let g:user_emmet_install_global = 0
let g:user_emmet_mode = 'n'
let g:user_emmet_settings = {
\   'html': {
\     'default_attributes': {
\       'script': {'src': ''},
\     },
\   },
\   'css' : {
\     'filters': 'fc',
\   },
\   'scss' : {
\     'filters': 'fc',
\   },
\   'sass' : {
\     'filters': 'fc',
\   },
\ }

" lightline config
set laststatus=2    " this is needed for some reason
set noshowmode      " lightline is showing our mode
let g:lightline = {
\   'separator': { 'left': '', 'right': '' },
\   'subseparator': { 'left': '', 'right': '' },
\   'active': {
\     'right': [
\       [ 'lineinfo' ],
\       [ 'percent' ],
\       [ 'fileformat', 'fileencoding', 'filetype', 'syntastic' ]
\     ]
\   },
\   'tabline': {
\     'right': [ ]
\   },
\   'tab': {
\     'active': [ 'filename', 'modified' ],
\     'inactive': [ 'filename', 'modified' ]
\   }
\ }
"\   'separator': { 'left': '', 'right': '' },
"\   'subseparator': { 'left': '│', 'right': '│' },
"\      'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
"\   'colorscheme': 'solarized_dark',

" ctrl+p config
let g:ctrlp_match_window = 'min:1,max:16,results:16'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_custom_ignore = {
\   'dir': '\v(\.(git|hg|svn)|music|videos|pictures)$',
\   'file': '\v\.(so|ip|gz|xz|pg|jpeg|png|gif|docx|doc|ods)@<!$',
\ }
"\   'file': '\v\.(so|exe|dll|zip|gz|xz|aac|mp3|m3a|m3u|mp4|m4a|ogg|wav|wma|jpg|jpeg|png|gif|docx|doc|ods)@<!$',

" vim-indent-guides config
let g:indent_guides_enable_on_vim_startup = 1 " like, wtf?
let g:indent_guides_auto_colors = 0 " just for gvim
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  ctermbg = 234
hi IndentGuidesEven ctermbg = 234

" syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['html'] }

" youcompleteme config
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" ultisnips config
let g:UltiSnipsExpandTrigger = "<S-Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-z>"
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetDirectories = ["snips", "UltiSnips"]

" vim-vue config
let g:vue_disable_pre_processors = 1

" MAPPING

" just naice
noremap ; :

" black-hole delete
noremap x "_d
nnoremap xx "_dd

" spellchecking enable/disable
noremap <F6> <Esc>:set<Space>spell!<CR>
inoremap <F6> <Esc>:set<Space>spell!<CR>i<Right>

" nicer redo
nmap U :redo<CR>

" easy escape from insert/visual mode, and easy ending of lines
inoremap jj <Esc>
inoremap JJ <Esc>
inoremap ;; <End>;
" for writing liquid
inoremap {% {%<Space><Space>%}<Left><Left><Left>

" neat find/replace shortcuts
" - copies to "x" register
vnoremap * y/<C-r>"<CR>N
nnoremap <C-o> :%s::g<Left><Left>
vnoremap <C-o> :s::g<Left><Left>
nnoremap <C-n> viw"xy:%s:<C-r>x::g<Left><Left>
vnoremap <C-n> "xy:%s:<C-r>x::g<Left><Left>

" wrap visual selections in pairs of things
" - copies to "z" register to not overwrite usual yank/delete register
" - works even on the end of a line (depends on "set virtualedit=onemore")
vnoremap ( "zdi()<Esc>"zPl
vnoremap { "zdi{}<Esc>"zPl
vnoremap [ "zdi[]<Esc>"zPl
vnoremap " "zdi""<Esc>"zPl
vnoremap ' "zdi''<Esc>"zPl
vnoremap ` "zdi``<Esc>"zPl
" still allow interaction with other registers
noremap ¬ "

" easy tab moving
nnoremap - <Esc>:tabp<CR>
nnoremap = <Esc>:tabn<CR>

" clear search
nnoremap <Leader>n <Esc>:let @/=""<CR>

" shortcut to vim configs
nnoremap <Leader>rv :so ~/.vimrc<CR>
nnoremap <Leader>rg :so ~/.gvimrc<CR>
nnoremap <Leader>vv :tabnew ~/.vimrc<CR>
nnoremap <Leader>vg :tabnew ~/.gvimrc<CR>

" redraw the ui
nnoremap <Leader>r :redr!<CR>

" clobber annoying emmet mapping
"unmap ,j

" copy/paste to/from system keyboard
vnoremap <Leader>x "+d
vnoremap <Leader>c "+y
nnoremap <Leader>x "+dd
nnoremap <Leader>c "+yy
nnoremap <Leader>v "+p

" add blank lines without entering insert mode
nnoremap <CR> o<ESC>
nnoremap <S-CR> O<ESC>

" more intuitive movement around files
noremap j gj
noremap k gk
noremap <Home> ^
noremap <Home><Home> 0

" more familiar indentation
nnoremap <Tab> V>
nnoremap <S-Tab> V<
vnoremap <Tab> >
vnoremap <S-Tab> <

" easier movement between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" easier resizing of splits
" (_ rather than - because shift is a thing)
nnoremap < <C-w><
nnoremap > <C-w>>
nnoremap + <C-w>+
nnoremap _ <C-w>-

" easier opening of new tabs
nnoremap T :tabnew<Space>

" COMMANDS

" use markdown filetype and wrap for markdown
autocmd BufRead,BufNewFile *.md,*.markdown setlocal filetype=markdown wrap

" use html, css, scss, etc. settings in vue components
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.scss

" use html filetype for templating languages
autocmd BufRead,BufNewFile *.vue,*.hbs,*.handlebars setlocal filetype=html

" show ruler for python
autocmd BufRead,BufNewFile *.py setlocal colorcolumn=80 textwidth=79

" show ruler for some languages
autocmd BufRead,BufNewFile *.js,*.css,*.sass,*.scss,*.vue,*.rb,*.php,*.sh,*.c,*.h,*.md,*.markdown,*.txt,.vimrc setlocal colorcolumn=81 textwidth=80
autocmd BufRead,BufNewFile *.html,*.htm,*.hbs,*.handlebars setlocal colorcolumn=121 textwidth=0

" set formatting for git commits
autocmd FileType gitcommit setlocalocal tabstop=2 shiftwidth=2
