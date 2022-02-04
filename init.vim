start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
syntax on
set encoding=utf-8
set fileEncoding=utf-8
set colorcolumn=100
"Tab is 3 spaces
set tabstop=3
set shiftwidth=3

call plug#begin()
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Files tree
Plug 'morhetz/gruvbox' "Color scheme
Plug 'jiangmiao/auto-pairs' "Auto close pairs
Plug 'airblade/vim-gitgutter' "Show git diff in column
call plug#end()

colorscheme gruvbox

"Switch insert and normal modes
imap <A-`> <Esc>
nmap <A-`> a
"Switch tree
nmap <tab> :NERDTreeToggle<CR>
"Save
imap <A-s> <Esc>:w<CR>a
nmap <A-s> :w<CR>
"Quit
imap <A-q> <Esc>:q<CR>a
nmap <A-q> :q<CR>
"Cancel
imap <A-z> <Esc>ua
nmap <A-z> u
"Copy
vmap <A-c> ya
"Paste
imap <A-v> <Esc>pa
nmap <A-c> p