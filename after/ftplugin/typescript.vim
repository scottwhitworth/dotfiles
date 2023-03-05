set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set foldmethod=manual
" set nofoldenable
set foldlevelstart=99
" help with slowing of typescript syntax highlighting
setlocal regexpengine=2

" ?: backwards search to z then xi
" CTRL+] to expand without putting the space in
iabbrev cld@ console.dir(z, {depth: null});<Esc>?z<CR>xi
iabbrev cll@ console.log(z);<Esc>?z<CR>xi
