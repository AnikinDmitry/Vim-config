start "Start in insert mode

set mouse=a "Turn on mouse in all modes
set number
set tabstop=2 "Tab is 2 spaces

colorscheme delek

"Save in insert mode
imap <c-s> <Esc>:w<CR>a
"Save and quit in instert mode
imap <c-q> <Esc>:wq<CR>
