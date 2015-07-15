" EXECUTED ON LOAD

" load session if it can be
let sessionFile="~/.vim/session.vim"
if filereadable(sessionFile)
  source ~/.vim/session.vim
endif

" SETTING

" die hard for terminus
set guifont=Terminus\ 8

" change tabs with control + page-up/down
nmap <C-PageUp> :tabprev<CR>
nmap <C-PageDown> :tabnext<CR>

" kb scrolling
noremap <A-j> <C-e>
noremap <A-k> <C-y>

" selections for casuals
nmap <S-Home> v<Home>
nmap <S-End> v<End>h
inoremap <S-Home> <Esc>lv<Home>
inoremap <S-End> <Esc>lv<End>
