" コメント改行の自動補完無効
autocmd FileType * set formatoptions-=ro

" BOMを削除
set nobomb

" 更新時自動再読込み
set autoread

" 全角記号を正しく表示させる
set ambiwidth=double

" バックスペースで消す
set backspace=indent,eol,start

" バックアップを書かない
set nowritebackup

" バックアップファイルをつくらない
set nobackup

" swapをつくらない
set noswapfile

" ビープ音を無効
set vb t_vb=

" カーソルが何行目の何列目に置かれているかを表示
set ruler

" コマンド補完を強化
set wildmenu

" リスト表示
set wildmode=list,full

" 日本語ヘルプ@enで英語
set helplang=ja,en

" 編集中でも他のファイルを開けるようにする
set hidden

" insertモードで自動で日本語切り替えさせない
set iminsert=0

" serachで自動で日本語切り替えさせない
set imsearch=0

" ステータスライン表示
set showcmd

" 常にステータスライン表示
set laststatus=2

" 10行以上でスクロール
set scrolloff=10

" 不可視文字の設定
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%,eol:$

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,s,<,>,[,]

" アルファベットをインクリメント、8進数除去
set nf=alpha,hex

" タブ幅の設定
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smartindent

" マクロなどの途中経過を描写しない
set lazyredraw

" viminfoの設定
"set viminfo=~/.cache/.viminfo

" undoファイルの有効
set undofile

" undoファイルの設定
set undodir=~/.cache/undo

" python3のパス
let g:python3_host_prog = 'C:\Program Files\Python36\python.exe'
