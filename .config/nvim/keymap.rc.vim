"--------------------------------------------------------------------------------
" SERACH CONFIGURATION {{{
"--------------------------------------------------------------------------------
set ignorecase
""小文字の検索でも大文字も見つかるようにする
set smartcase                                "ただし大文字も含めた検索の場合はその通りに検索する
set incsearch                                "インクリメンタルサーチを行う
set nowrapscan                               "(no)検索をファイルの末尾まで検索したら、ファイルの先頭へループする
set hlsearch			             "検索結果にハイライト

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
"===================================  END  ===================================}}}

"set background=dark
"colorscheme solarized

" vimrc gvimrc 編集
nnoremap <silent> <Space>ev :edit $MYVIMRC<CR>

" vimrc gvimrc 更新
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>


"--------------------------------------------------------------------------------
" KEY MAPPING								      {{{
"--------------------------------------------------------------------------------
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


" インサート抜ける
inoremap jj <ESC>

" <Space> + x で各種設定をトグル
nnoremap [toggle] <Nop>
nmap <Space> [toggle]
" 行番号
nnoremap <silent> [toggle]n :set number!<CR>
" 可視不可視
nnoremap <silent> [toggle]m :setl list!<CR>:setl list?<CR>
" 折り返し
nnoremap <silent> [toggle], :setl wrap!<CR>:setl wrap?<CR>
" スペルチェック
nnoremap <silent> [toggle]/. :setl spell!<CR>:setl spell?<CR>
" タブとスペース
nnoremap <silent> [toggle]// :set expandtab!<CR>
" タブとスペースを変換
nnoremap <silent> [toggle]/\ :retab!<CR>
" カーソル位置
nnoremap <silent> [toggle]c :<C-u>setlocal cursorline! cursorcolumn!<CR>
" インデントの色付け
nmap <silent> [toggle]i <Plug>IndentGuidesToggle
" インデントの色付け幅
let g:indent_guides_guide_size = 1

" カーソル下の文字検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" escでハイライトをオフ
nnoremap <silent><ESC> <ESC>:noh<CR>

" バッファ
nnoremap [buffer] <Nop>
nmap <Space>b [buffer]
nnoremap <silent> [buffer]p :bprevious<CR>
nnoremap <silent> [buffer]n :bnext<CR>
nnoremap <silent> [buffer]b :b#<CR>
nnoremap <silent> [buffer]d :bdelete<CR>
nnoremap <silent> [buffer]c :enew<CR>

" Switchの定義追加
let g:switch_custom_definitions =
    \[
    \	['on', 'off'],
    \	['relative', 'absolute'],
    \	['margin', 'padding'],
    \	['top', 'right', 'bottom', 'left'],
    \	['start', 'end'],
    \	['jpg', 'png', 'gif'],
	\   ['public', 'protected', 'private'],
    \]

" true falseのスイッチ
nnoremap ^ :Switch<CR>
