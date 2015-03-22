execute pathogen#infect()

let g:go_fmt_command = "goimports"

set autoindent
filetype plugin indent on

set laststatus=2 " always show the status line
set dir=/tmp
set backupdir=/tmp

" For the solarized colorscheme:
set t_Co=256       " set 256 color support
" Following 4 lines from solarized docs
syntax enable
set background=light    " light/dark
let g:solarized_termcolors=256   " for terminal users
colorscheme solarized

map <F2> :NERDTreeToggle<CR>
nnoremap <F3> :set nonumber!<CR> 

" Set the NERDTree ignores:
let NERDTreeIgnore = ['\.pyc$']
