nnoremap <silent> <Space>ev :edit $MYVIMRC<CR>
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> <Space>et :edit ~/.config/nvim/dein.toml<CR>
nnoremap <silent> <Space>eT :edit ~/.config/nvim/deinlazy.toml<CR>

" windowsのNeovimでshift insertが効かないので
if has('win32') || has('win64')
    map! <S-Insert> <esc>:set paste<CR>a<C-R>+<esc>:set nopaste<CR>i
    vmap <C-Insert> y
endif

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

" Shift + 矢印でウィンドウサイズを変更
call submode#enter_with('winsize', 'n', '', '<S-l>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<S-h>', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<S-j>', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<S-k>', '<C-w>+')
call submode#map('winsize', 'n', '', 'l', '<C-w>>')
call submode#map('winsize', 'n', '', 'h', '<C-w><')
call submode#map('winsize', 'n', '', 'j', '<C-w>-')
call submode#map('winsize', 'n', '', 'k', '<C-w>+')

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

" インサート抜ける
inoremap jj <ESC>

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
nnoremap <silent> <Space>/_ :retab!<CR>
" カーソル位置
nnoremap <silent> <Space>c :<C-u>setlocal cursorline! cursorcolumn!<CR>

" 縦連番インクリメント
command! -count -nargs=1 ContinuousNumber let c = col('.')|for n in range(1, <count>?<count>-line('.'):1)|exec 'normal! j' . n . <q-args>|call cursor('.', c)|endfor
vnoremap <silent> <C-a>   :ContinuousNumber <C-a><CR>
vnoremap <silent> <C-x>   :ContinuousNumber <C-x><CR>
vnoremap <silent>+   :ContinuousNumber <C-a><CR>
vnoremap <silent>-   :ContinuousNumber <C-x><CR>

" escでハイライトをオフ
nnoremap <silent><ESC> <ESC>:noh<CR>

" カーソル下の文字検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" 改行
" ノーマルモード中でもエンターキーで改行挿入でノーマルモードに戻る
nnoremap <CR> i<CR><ESC>
"行末のときとかはこっちがいいよ
nnoremap <C-CR> o<ESC>
" oの改行
inoremap <C-CR> <ESC>o

" ヴィジュアルモードでインデント調整したらまたヴィジュアルモードに戻る
vnoremap < <gv
vnoremap > >gv|

" Exモードなんて使わない
map Q <Nop>

" %の置き換え
nmap mm %
vmap mm %

" ブラウザを開く
if(has('win64'))
	noremap <Leader>bf :silent ! start firefox %<CR>
    noremap <Leader>bc :silent ! start chrome %<CR>
	noremap <Leader>be :silent ! start IEXPLORE %<CR>
endif
