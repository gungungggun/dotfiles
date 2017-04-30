" 最大化で起動
au GUIEnter * simalt ~x

" フォントの設定
set guifont=Ricty_Diminished_for_Powerline:h12:cSHIFTJIS:qDRAFT

" ビープ音を無効
set vb t_vb=

"colorschem pablo

" カラースキーム solarizedの設定
let g:solarized_contrast="hight"
let g:solarized_italic=0
"call togglebg#map("<f5>")
set background=dark

colorschem solarized

set guioptions-=T " ツールバー非表示
set guioptions-=m "メニューを削除
set guioptions-=e " タブをテキストに

" 透明化
nnoremap <silent> <space>o :Transparency<CR>
nnoremap <silent> <space>p :NoTransparency<CR>

" VimShellの起動
noremap <C-S> :sp<CR><C-W><C-W>:VimShell<CR><ESC><C-W>20-a

source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

"--------------------------------------------------------------------------------
" LIGHTLINE CONFIGURATION						      {{{
"--------------------------------------------------------------------------------
"gvimの設定はgvimrcに書かなくてはならないので注意！

let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
	\ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
	\ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
        \ 'component_function': {
        \   'modified': 'MyModified',
        \   'readonly': 'MyReadonly',
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode'
        \ }
        \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
      return fugitive#head()
    endif
  catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction



"===================================  END  ===================================}}}
