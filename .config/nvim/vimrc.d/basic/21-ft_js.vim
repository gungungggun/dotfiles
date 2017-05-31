function! InitJs()
	setlocal expandtab
	setlocal tabstop=2
	setlocal softtabstop=2
	setlocal shiftwidth=2

	setlocal autoindent
	setlocal smartindent
	setlocal cinwords=if,elseif,else,for,while,try,except,class
endfunction
autocmd BufEnter * if &filetype == "js" || &filetype == "vue" | call InitJs() | endif
