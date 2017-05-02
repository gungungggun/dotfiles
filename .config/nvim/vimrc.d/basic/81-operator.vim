" リプレースオペレーション
nmap s <Plug>(operator-replace)

" コメントオペレーション
nmap # <Plug>(operator-uncomment)
nmap " <Plug>(operator-comment)

nmap C <Plug>(operator-camelize-toggle)
vmap C <Plug>(operator-camelize-toggle)

" textobj の先頭へ移動する
nmap <Space>k <Plug>(operator-jump-head)
" textobj の末尾へ移動する
nmap <Space>j <Plug>(operator-jump-tail)
