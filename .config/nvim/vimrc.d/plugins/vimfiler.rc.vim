" VimFiler を開く
nnoremap <Space>ff :VimFilerBufferDir -explorer<CR>

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_edit_action = 'tabopen'

" ファイルを開く方法を替える
nnoremap <Space>fo :let g:vimfiler_edit_action = 'open'<CR>
nnoremap <Space>ft :let g:vimfiler_edit_action = 'tabopen'<CR>

" 他のバッファをすべて閉じた時にvimfilerが開いていたらvimfilerも一緒に閉じる。
autocmd BufEnter * if (winnr('$') == 1 && &filetype ==# 'vimfiler') | q | endif

autocmd MyAutoCmd FileType vimfiler call s:vimfiler_settings()
function! s:vimfiler_settings()
  "プレビューを消す用
  nmap V <C-k>:q<CR>
  "更新
  nmap <buffer> R <Plug>(vimfiler_redraw_screen)
  "移動
  nmap <buffer> <C-l> <C-w>l
endfunction
