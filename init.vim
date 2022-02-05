start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
syntax on
set encoding=utf-8 fileEncoding=utf-8
set colorcolumn=100
set tabstop=3 shiftwidth=3 "Tab is 3 spaces
set noswapfile "Delete some errors

call plug#begin()
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Files tree
Plug 'morhetz/gruvbox' "Color scheme
Plug 'jiangmiao/auto-pairs' "Auto close pairs
Plug 'airblade/vim-gitgutter' "Show git diff in column
Plug 'tpope/vim-figitive' "Show git diif in new page and other
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
imap <c-z> <Esc>ua
nmap <c-z> u
"Copy
vmap <c-c> ya
"Paste
imap <c-v> <Esc>pa
nmap <c-v> p
"Show git diff
nmap <A-d> :Gdiff<CR>