start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
set tabstop=2 "Tab is 2 spaces
syntax on

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } "Files tree
Plug 'morhetz/gruvbox' "Color scheme
call plug#end()

"Switch insert and normal modes
imap <A-q> <Esc>
nmap <A-q> i
"Switch tree
nmap <tab> :NERDTreeToggle<CR>
"Save
imap <c-s> <Esc>:w<CR>a
nmap <c-s> :w<CR>
