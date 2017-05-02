" ビトゥイーンテキストオブジェ
omap af <Plug>(textobj-between-a)
omap if <Plug>(textobj-between-i)
vmap af <Plug>(textobj-between-a)
vmap if <Plug>(textobj-between-i)

" 関数テキストオブジェ
omap iF <Plug>(textobj-function-i)
omap aF <Plug>(textobj-function-a)
vmap iF <Plug>(textobj-function-i)
vmap aF <Plug>(textobj-function-a)

" バッファ全体テキストオブジェ
omap ie <Plug>(textobj-entire-a)
omap ae <Plug>(textobj-entire-i)
vmap ie <Plug>(textobj-entire-a)
vmap ae <Plug>(textobj-entire-i)

" 行テキストオブジェ
omap il <Plug>(textobj-line-a)
omap al <Plug>(textobj-line-i)
vmap il <Plug>(textobj-line-a)
vmap al <Plug>(textobj-line-i)

" コメントオブジェ
omap ac	<Plug>(textobj-comment-a)
omap ic	<Plug>(textobj-comment-i)
vmap ac	<Plug>(textobj-comment-a)
vmap ic	<Plug>(textobj-comment-i)

" ブロックテキストオブジェ
omap abb <Plug>(textobj-multiblock-a)
omap ibb <Plug>(textobj-multiblock-i)
vmap abb <Plug>(textobj-multiblock-a)
vmap ibb <Plug>(textobj-multiblock-i)

" 上から順に textobj を適用していき、該当するものが使用される
let g:textobj_multitextobj_textobjects_i = [
			\ "\<Plug>(textobj-multiblock-i)",
			\ "\<Plug>(textobj-jabraces-parens-i)",
			\ "\<Plug>(textobj-jabraces-braces-i)",
			\ "\<Plug>(textobj-jabraces-brackets-i)",
			\ "\<Plug>(textobj-jabraces-angles-i)",
			\ "\<Plug>(textobj-jabraces-double-angles-i)",
			\ "\<Plug>(textobj-jabraces-kakko-i)",
			\ "\<Plug>(textobj-jabraces-double-kakko-i)",
			\ "\<Plug>(textobj-jabraces-yama-kakko-i)",
			\ "\<Plug>(textobj-jabraces-double-yama-kakko-i)",
			\ "\<Plug>(textobj-jabraces-kikkou-kakko-i)",
			\ "\<Plug>(textobj-jabraces-sumi-kakko-i)",
			\]
let g:textobj_multitextobj_textobjects_a = [
			\ "\<Plug>(textobj-jabraces-parens-a)",
			\ "\<Plug>(textobj-jabraces-braces-a)",
			\ "\<Plug>(textobj-jabraces-brackets-a)",
			\ "\<Plug>(textobj-jabraces-angles-a)",
			\ "\<Plug>(textobj-jabraces-double-angles-a)",
			\ "\<Plug>(textobj-jabraces-kakko-a)",
			\ "\<Plug>(textobj-jabraces-double-kakko-a)",
			\ "\<Plug>(textobj-jabraces-yama-kakko-a)",
			\ "\<Plug>(textobj-jabraces-double-yama-kakko-a)",
			\ "\<Plug>(textobj-jabraces-kikkou-kakko-a)",
			\ "\<Plug>(textobj-jabraces-sumi-kakko-a)",
			\ "\<Plug>(textobj-multiblock-a)",
			\]

omap am <Plug>(textobj-multitextobj-a)
omap im <Plug>(textobj-multitextobj-i)
vmap am <Plug>(textobj-multitextobj-a)
vmap im <Plug>(textobj-multitextobj-i)

omap <silent> W <Plug>CamelCaseMotion_iw
vmap <silent> W <Plug>CamelCaseMotion_iw
"omap <silent> iw <Plug>CamelCaseMotion_iw
"vmap <silent> iw <Plug>CamelCaseMotion_iw
"omap <silent> ib <Plug>CamelCaseMotion_ib
"vmap <silent> ib <Plug>CamelCaseMotion_ib
"omap <silent> ie <Plug>CamelCaseMotion_ie
"vmap <silent> ie <Plug>CamelCaseMotion_ie
