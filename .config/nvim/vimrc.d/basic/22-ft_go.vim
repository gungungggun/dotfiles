function! InitGo()
	setlocal expandtab
	setlocal tabstop=4
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
endfunction
autocmd BufEnter * if &filetype == "go" | call InitGo() | endif
