let g:netrw_nogx = 1
nmap gx <plug>(openbrowser-smart-search)
vmap gx <plug>(openbrowser-smart-search)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>
command! OpenBrowserCurrent execute "OpenBrowser" expand("%:p")
nnoremap <Leader>o :<C-u>OpenBrowserCurrent<Enter>
