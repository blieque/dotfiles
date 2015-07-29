" un-Bram this software
set nocompatible

" BUNDLING

" vundle config, bundling
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage itself
Bundle 'gmarik/vundle'

" majorly change vim behaviour
Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-sleuth'
Bundle 'kien/ctrlp.vim'

" make editing easier
Bundle 'jelera/vim-javascript-syntax'
Bundle 'jiangmiao/auto-pairs'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'terryma/vim-multiple-cursors'
"Bundle 'Valloric/YouCompleteMe'

" make things pretty
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'altercation/vim-colors-solarized'
Bundle 'zeis/vim-kolor'

" PLUGIN STUFF

" load emmet
autocmd FileType html,css EmmetInstall

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
set lazyredraw                          " minimal screen redrawing
set incsearch                           " auto-complete searching
set ignorecase                          " case-insensitive searching
set cursorline                          " highlight cursor line
set modeline                            " let modeslines be used (for root user too)
set hlsearch                            " highlight search matches
set wildmenu                            " wild menu tab completion
set wrap                                " wrap
set mousef                              " it's like terminator!
set mouse=a                             " i'm casual, k?
set mousehide                           " hidden mouse for typing
set expandtab                           " spaces, not tabs
set linebreak                           " wrap at spaces between words
set tabstop=4                           " 4 space-wide tabs
set shiftwidth=4                        " shift-width, indentation
set scrolloff=10                        " keep at least 10 lines above below cursor, eases scrolling
set sidescroll=16                       " as above, but horizontal and 16 columns
set spelllang=en_gb                     " set spellchecking to british english
set timeoutlen=450                      " quicker key sequences, as default is 1000
set viminfo=                            " no mo' .viminfo
set list                                " use custom special strings
set listchars=tab:\ \ ,trail:�,extends:. " show dots for trailing spaces, and other stuff
set omnifunc=syntaxcomplete#Complete    " suddenly i feel like vim can be taken seriously

set noswapfile                          " disable swap files

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
let g:user_emmet_leader_key = '<Tab>'
let g:user_emmet_install_global = 0
let g:user_emmet_mode = 'i'
let g:user_emmet_settings = {
\   'html': {
\     'default_attributes': {
\       'script': {'src': ''},
\     },
\   },
\   'css' : {
\     'filters': '',
\   },
\ }

" lightline config
set laststatus=2    " this is needed for some reason
set noshowmode      " lightline is showing our mode
let g:lightline = {
\   'colorscheme': 'solarized_dark',
\   'separator': { 'left': '', 'right': '' },
\   'subseparator': { 'left': '', 'right': '' },
\ }

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
hi IndentGuidesOdd  ctermbg=234
hi IndentGuidesEven ctermbg=234

" MAPPING

" basics
nore ; :
noremap x "_d
noremap <F6> <Esc>:set<Space>spell!<CR>
inoremap <F6> <Esc>:set<Space>spell!<CR>i<Right>

" nicer redo
nmap U :redo<CR>

" easy escape from insert/visual mode, and easy ending of lines
inoremap jj <Esc>
inoremap JJ <Esc>
vnoremap ii <Esc>
vnoremap II <Esc>
imap ,, <End>,<CR>
imap ;; <End>;
imap {{ <End><Space>{<CR>
imap {{<CR> <End><Space>{<CR><CR>.<CR><Up><End><BS>

" wrap visual selections in pairs of things
" - copies to "w" register to not overwrite usual yank/delete register
" - clears register after for security
vnoremap ( "wdi()<Esc>"wPqwql
vnoremap { "wdi{}<Esc>"wPqwql
vnoremap [ "wdi[]<Esc>"wPqwql
vnoremap < "wdi<><Esc>"wPqwql
vnoremap " "wdi""<Esc>"wPqwql
vnoremap ' "wdi''<Esc>"wPqwql
vnoremap ` "wdi``<Esc>"wPqwql

" moving around, splits, undo, [redraw], general leader stuff
noremap <C-z> u
noremap <Leader>o <Esc>:tabp<CR>
noremap <Leader>p <Esc>:tabn<CR>
noremap <Leader>t <Esc>:tabnew<Space>
noremap <Leader>r :redr<CR>
noremap <Leader>rv :so<Space>~/.vimrc<CR>
noremap <Leader>rg :so<Space>~/.gvimrc<CR>
noremap <Leader>vv :tabnew<Space>~/.vimrc<CR>
noremap <Leader>vg :tabnew<Space>~/.gvimrc<CR>
noremap <Leader>v <C-v>
noremap <Leader>n <Esc>:let<Space>@/=""<CR>
noremap <Leader>h ^
noremap <Leader>j G
noremap <Leader>k gg
noremap <Leader>l $

" highlight/replace all occurences of a word
nnoremap * *N:%s///g<Left><Left>

" copy/paste to/from system keyboard
vnoremap <C-x> "+dd
vnoremap <C-c> "+yy
vnoremap <C-v> "+p

" map <C-x> to something else
nnoremap <C-s> <C-x>

" add blank lines without entering insert mode
nnoremap <CR> o<Esc>
nnoremap <S-CR> O<Esc>

" more intuitive movement around files
noremap j gj
noremap k gk
noremap 0 g0
noremap $ g$
noremap <Home> g<Home>
noremap <End> g<End>
nnoremap A g<End>a
nnoremap I g<Home>i

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

" use markdown filetype for .md files
autocmd BufRead,BufNewFile *.md call MarkdownSettings()
