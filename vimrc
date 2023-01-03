packadd! solarized8
packadd! vim-vue
packadd! vim-javascript
packadd! vim-go
packadd lsp

" default space moves cursor right in normal mode
nnoremap <SPACE> <Nop>
" set space as leader
let mapleader=" "

map <silent> <F2> :Lexplore<CR>
map <silent> <F3> :set number! relativenumber!<CR>
map <silent> <F4> :syntax sync minlines=50<CR>
imap cll console.log()<Left>
nnoremap <silent> <C-d> <C-d>zz<CR>
nnoremap <silent> <C-u> <C-u>zz<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>

set autoindent
filetype plugin indent on

syntax enable

set laststatus=2 " always show the status line
set dir=/tmp
set backupdir=/tmp

set cursorline
set cursorcolumn
set colorcolumn=80

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

" vim-lsp configuration
" typescript: softlink from ~/.nvm/version/*/*/bin to /usr/local/bin
let lspServers = [
	\	#{
	\	  filetype: ['javascript', 'typescript'],
	\	  path: '/usr/local/bin/typescript-language-server',
	\	  args: ['--stdio']
	\	 }
	\  ]
call LspAddServer(lspServers)

" lsp key mappings
nnoremap <leader>dc :LspDiagCurrent<CR>
nnoremap <leader>dn :LspDiagNext<CR>
nnoremap <leader>dp :LspDiagPrev<CR>
nnoremap <leader>lh :LspHover<CR>
nnoremap <leader>hl :LspHighlight<CR>
nnoremap <leader>hL :LspHighlightClear<CR>
nnoremap <leader>lf :LspFormat<CR>
