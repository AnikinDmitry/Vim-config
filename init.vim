start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
syntax on
set colorcolumn=100
"Tab is 3 spaces
set tabstop=3
set shiftwidth=3

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
"Quit
nmap <A-`> :q<CR>
"Cancel
imap <A-z> <Esc>ua
nmap <A-z> u
"Copy
vmap <c-c> ya
"Paste
imap <c-v> <Esc>pa
nmap <c-c> p

autocmd VimEnter * NERDTree "Open files tree to start