function! InitCss()
	setlocal expandtab
	setlocal tabstop=2
	setlocal softtabstop=2
	setlocal shiftwidth=2

	setlocal autoindent
	setlocal smartindent
endfunction
autocmd BufEnter * if &filetype == "css" || &filetype == "scss" || &filetype == "styl" || &filetype == "stylus" | call InitCss() | endif
