start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
syntax on
set colorcolumn=100

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } "Files tree
Plug 'morhetz/gruvbox' "Color scheme
call plug#end()

colorscheme gruvbox

"Switch insert and normal modes
imap <A-q> <Esc>
nmap <A-q> i
"Switch tree
nmap <tab> :NERDTreeToggle<CR>
"Save
imap <c-s> <Esc>:w<CR>a
nmap <c-s> :w<CR>
