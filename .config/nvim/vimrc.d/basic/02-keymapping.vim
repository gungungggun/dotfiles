nnoremap <silent> <Space>ev :edit $MYVIMRC<CR>
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> <Space>et :edit ~/.config/nvim/dein.toml<CR>
nnoremap <silent> <Space>eT :edit ~/.config/nvim/deinlazy.toml<CR>

" windowsのNeovimでshift insertが効かないので
map! <S-Insert> <C-R>+

" \ を , と置き換える
let mapleader = ","
noremap \  ,

" 行頭行末の移動
nnoremap <M-h> <HOME>
nnoremap <M-l> <END>
inoremap <M-h> <Home>
inoremap <M-l> <End>
vnoremap <M-h> <Home>
vnoremap <M-l> <End>

" 大きく移動
nnoremap <M-j> 30j
nnoremap <M-k> 30k
inoremap <M-j> <ESC>30ji
inoremap <M-k> <ESC>30ki
vnoremap <M-j> 30j
vnoremap <M-k> 30k

" 折り返しの移動を視覚的に
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" 画面移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" インサートモードの移動
inoremap <C-h> <LEFT>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-l> <RIGHT>

" 括弧系は中央に移動
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

" 括弧で中央に移動したくない場合
inoremap {}} {}
inoremap []] []
inoremap ()) ()
inoremap """ ""
inoremap ''' ''
inoremap <>> <>

" 全選択 vaeとかでもいけるからいらんかも
nnoremap <silent> <Space>a ggV<S-g>$

" <Space> + x で各種設定をトグル
" 行番号
nnoremap <silent> <Space>n :set number!<CR>
" 可視不可視
nnoremap <silent> <Space>m :setl list!<CR>:setl list?<CR>
" 折り返し
nnoremap <silent> <Space>, :setl wrap!<CR>:setl wrap?<CR>
" スペルチェック
nnoremap <silent> <Space>/. :setl spell!<CR>:setl spell?<CR>
" タブとスペース
nnoremap <silent> <Space>// :set expandtab!<CR>
" タブとスペースを変換
nnoremap <silent> <Space>/\ :retab!<CR>
