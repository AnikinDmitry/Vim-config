start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
syntax on
set encoding=utf-8 fileencoding=utf-8
scriptencoding=utf-8
set list "Add symbol for tab and space
set colorcolumn=100
set tabstop=4 shiftwidth=4 "Tab is 4 spaces
set noswapfile "Delete some errors

call plug#begin()
Plug 'preservim/nerdtree' "Files tree
Plug 'morhetz/gruvbox' "Color scheme
Plug 'jiangmiao/auto-pairs' "Auto close pairs
Plug 'airblade/vim-gitgutter' "Show git diff in column
Plug 'tpope/vim-figitive' "Show git diif in new page and other
Plug 'vim-airline/vim-airline' "Status bar
Plug 'Xuyuanp/nerdtree-git-airline' "Show git diff in files tree 
call plug#end()

colorscheme gruvbox

"A is alt, c is ctrl
"Switch insert and normal modes
imap <a-`> <Esc>
nmap <a-`> a
"Switch tree
nmap <tab> :NERDTreeToggle<CR>
"Save
imap <a-s> <Esc>:w<CR>a
nmap <a-s> :w<CR>
"Quit
imap <a-q> <Esc>:q<CR>a
nmap <a-q> :q<CR>
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