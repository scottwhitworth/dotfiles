packadd! solarized8
packadd! vim-vue
packadd! vim-javascript
packadd! vim-go

map <silent> <F2> :Lexplore<CR>
map <silent> <F3> :set number! relativenumber!<CR>
map <silent> <F4> :syntax sync minlines=50<CR>
imap cll console.log()<Left>
nnoremap <silent> <C-d> <C-d>zz<CR>
nnoremap <silent> <C-u> <C-u>zz<CR>

set autoindent
filetype plugin indent on

syntax enable

set laststatus=2 " always show the status line
set dir=/tmp
set backupdir=/tmp

" statusline to show column number
set statusline+=%.25F%m\ -\ \Line:\ %4l/%4L\ -\ Col:\ %1v

" vim-vue pre-processor detection
let g:vue_pre_processors = []

set background=light
colorscheme solarized8

" netrw file explorer config
" tree style listing
let g:netrw_liststyle = 3
" open file in previous window to the right
let g:netrw_browse_split = 4
let g:netrw_altv = 1
" set window width (25%)
let g:netrw_winsize = 25
" hide top banner (I to show)
let g:netrw_banner = 0
