" vundle config, bundling
set nocp
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'itchyny/lightline.vim'
Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'vim-scripts/sudo.vim'
Bundle 'tpope/vim-sleuth'
Bundle 'mattn/emmet-vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'

"Bundle 'kien/ctrlp.vim'

Bundle 'altercation/vim-colors-solarized'
Plugin 'jelera/vim-javascript-syntax'

" colours, indentation
filetype plugin indent on
syntax enable
set bg=dark
let g:solarized_termcolors=256

colo solarized
" retains colours even when reloading .vimrc (no need to reload .gvimrc too)
if has("gui_running")
    colo flatland
endif

" setting
set nu			" line numbers
set ai			" nice auto-indentation
set lz			" minimal screen redrawing
set is			" auto-complete searching
set ic			" case-insensitive searching
set cul			" highlight cursor line
set hls			" highlight search matches
set wmnu		" wild menu tab completion
set noswf		" disable swap files
set wrap lbr	" wrap at spaces between words
set noet		" tabs, not spaces
set ts=4		" 4 space-wide tabs
set sw=4		" shift-width, indentation
set so=10		" keep at least 10 lines above below cursor, eases scrolling
set ss=16		" as above, but horizontal and 16 columns
set tm=450		" quicker key sequences, as default is 1000
set vi=			" no mo' .viminfo
set lcs=eol:$,tab:\|∙,trail:∙,extends:…	" fancy tab lines and dots
set spl=en_gb	" set spellchecking to British English
set ofu=syntaxcomplete#Complete " suddenly I feel like vim can be taken seriously
set mouse=a		" i'm casual, k?
set mousef		" it's like terminator!
set mh			" hidden mouse for typing

" letting
let mapleader="'"
let g:lightline = {
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'subseparator': { 'left': '', 'right': '' },
	  \ }
	  " \ 'separator': { 'left': '', 'right': '' },
	  " \ 'subseparator': { 'left': '•', 'right': '•' },
let g:user_emmet_leader_key='<Leader><Tab>'

let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_skip_key='<C-d>'
let g:multi_cursor_quit_key='<C-x>'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\~\\music',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" vim-airline config
set ls=2
let g:airline_powerline_fonts=1
let g:ycm_key_list_select_completion = ['<Tab>']
nnoremap <S-Tab> <Tab>

" use markdown filetype for .md files
au BufRead,BufNewFile *.md call MarkdownSettings()

" mapping
nore ; :
noremap x "_d
noremap <F6> <Esc>:set<Space>spell!<CR>
inoremap <F6> <Esc>:set<Space>spell!<CR>i<Right>

" easy escape from insert, and easy ending of lines
inoremap jj <Esc>
vnoremap ii <Esc>
imap ,, <End>,<CR>
imap ;; <End>;<CR>
imap {{ <End><Space>{<CR>

" moving around, splits, undo, redraw, general leader stuff
noremap <C-z> <Esc>:u<CR>
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
nnoremap <Leader>l $
vnoremap <Leader>l $h

" copy/paste to/from system keyboard
map <C-x> "+yy"_d
map <C-c> "+yy
map <C-v> "+p

" add blank lines without entering insert mode
nnoremap <CR> o<ESC>
nnoremap <S-CR> O<ESC>

" more intuitive movement around files
noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$
noremap <buffer> <silent> <Home> g<Home>
noremap <buffer> <silent> <End> g<End>
nnoremap A g<End>i
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

" easier resizing of splits (_ rather than - because shift is a thing)
nnoremap < <C-w><
nnoremap > <C-w>>
nnoremap + <C-w>+
nnoremap _ <C-w>-

" easier creation of splits
nnoremap <C-,> :vnew<CR>
nnoremap <C-.> :right<Space>vnew<CR>
nnoremap <C-=> :new<CR>
nnoremap <C--> :below<Space>new<CR>

" comment out and in with Ctrl+/
"vnoremap <C-#>

" GVIM

" change tabs with control + page-up/down
nmap <C-PageUp> :tabprev<CR>
nmap <C-PageDown> :tabnext<CR>

" kb scrolling
noremap <A-j> <C-e>
noremap <A-k> <C-y>
nmap <S-Home> v<Home>
nmap <S-End> v<End>h

inoremap <S-Home> <Esc>lv<Home>
inoremap <S-End> <Esc>lv<End>

" stuff
" open multiple tabs with greater ease
command! -complete=file -nargs=+ Etabs call s:ETW('tabnew', <f-args>)
command! -complete=file -nargs=+ Ewindows call s:ETW('new', <f-args>)
command! -complete=file -nargs=+ Evwindows call s:ETW('vnew', <f-args>)
function! s:ETW(what, ...)
for f1 in a:000
	let files = glob(f1)
		if files == ''
			execute a:what . ' ' . escape(f1, '\ "')
		else
			for f2 in split(files, "\n")
				execute a:what . ' ' . escape(f2, '\ "')
			endfor
		endif
	endfor
endfunction
