function! InitHtml()
	setlocal expandtab
	setlocal tabstop=4
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
	setlocal cinwords=if,elseif,else,for,while,try,except,class
	"inoremap <buffer> </ </<C-x><C-o>
	vmap <Leader>< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
	vmap <Leader>* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
	vmap <Leader>d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>
endfunction
autocmd BufRead,BufNewFile *.vue set filetype=html
autocmd BufEnter * if &filetype == "html" || &filetype == "xhtml" | call InitHtml() | endif
