"--------------------------------------------------------------------------------
" PLUGIN CONFIGURATION							      {{{
"--------------------------------------------------------------------------------
scriptencoding utf-8

if has('vim_starting')
	filetype plugin off
	filetype indent off
	execute 'set runtimepath+=' . expand('~/vimfiles/bundle/neobundle.vim')
endif
call neobundle#begin(expand('~/vimfiles/bundle'))

NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/vimproc.vim.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'h1mesuke/vim-alignta'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'rking/ag.vim'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'LeafCage/foldCC'
NeoBundle 'thinca/vim-ref'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ujihisa/neco-look'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-operator-replace'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-jabraces'
NeoBundle 'thinca/vim-textobj-comment'
NeoBundle 'thinca/vim-textobj-between'
NeoBundle 'osyo-manga/vim-textobj-multiblock'
NeoBundle 'emonkak/vim-operator-comment'
NeoBundle 't9md/vim-textmanip'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/taglist.vim'
"NeoBundle 'szw/vim-tags'
NeoBundle 'fuenor/qfixhowm.git'
NeoBundle 'sgur/vim-textobj-parameter'
NeoBundle 'osyo-manga/vim-textobj-multitextobj'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'mattn/vim-textobj-url'
NeoBundle 'kana/vim-textobj-fold'
NeoBundle 'osyo-manga/vim-operator-jump_side'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/excitetranslate-vim'
NeoBundle 'vim-scripts/teol.vim'
"NeoBundle 'goldfeld/vim-seek'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'tyru/operator-camelize.vim'
NeoBundle 'koron/codic-vim'
NeoBundle 'thinca/vim-fontzoom'
NeoBundle 'kana/vim-submode'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 't9md/vim-choosewin'
NeoBundle 'itchyny/thumbnail.vim'

" 線を引くプラグイン
NeoBundle 'vim-scripts/DrawIt'

" 変数名を変換するプラグイン cr*
NeoBundle 'tpope/vim-abolish'

"+Lua なら neocompleteを読む
function! s:meet_neocomplete_requirements()
    return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction

if s:meet_neocomplete_requirements()
    NeoBundleLazy 'Shougo/neocomplete.vim', {
    	\ 'autoload': {
    	\   'insert': 1,
    	\ }}
    NeoBundleFetch 'Shougo/neocomplcache.git'
else
    NeoBundleFetch 'Shougo/neocomplete.vim'
    NeoBundleLazy 'Shougo/neocomplcache.git', {
    	\ 'autoload': {
    	\   'insert': 1,
    	\ }}
endif

NeoBundleLazy 'akiyan/vim-textobj-php', {
	\ 'autoload': {
	\   'filetypes': ['php'],
	\ }}

NeoBundleLazy 'Shougo/neosnippet.vim', {
	\ 'autoload': {
	\   'insert': 1,
	\ }}

NeoBundleLazy 'Shougo/neosnippet-snippets', {
	\ 'autoload': {
	\   'insert': 1,
	\ }}

NeoBundleLazy 'Shougo/unite.vim.git', {
	\ 'autoload': {
	\   'commands': ['Unite', 'UniteWithBufferDir'],
	\ }}

NeoBundleLazy 'h1mesuke/unite-outline', {
	\ 'autoload': {
	\   'unite_sources': ['outline'],
	\ }}

NeoBundleLazy 'ujihisa/unite-colorscheme', {
	\ 'autoload': {
	\   'unite_sources': ['colorscheme'],
	\ }}

NeoBundleLazy 'pasela/unite-webcolorname', {
	\ 'autoload': {
	\   'unite_sources': ['webcolorname'],
	\ }}

NeoBundleLazy 'rhysd/unite-codic.vim', {
        \ 'autoload': {
        \   'unite_sources': ['codic'],
        \ }}

NeoBundleLazy 'tacroe/unite-mark', {
	\ 'autoload': {
	\   'unite_sources': ['mark'],
	\ }}

NeoBundleLazy 'Shougo/neomru.vim', {
	\ 'autoload': {
	\   'unite_sources': ['file_mru'],
	\ }}

NeoBundleLazy 'Shougo/vimshell.vim.git', {
	\ 'autoload': {
	\   'commands': ['VimShell']
	\ }}

NeoBundleLazy 'osyo-manga/unite-quickfix', {
	\ 'autoload': {
	\   'commands': ['quickfix']
	\ }}

NeoBundleLazy 'Shougo/vimfiler', {
	\ 'depends': ['Shougo/unite.vim'],
	\ 'autoload': {
	\   'commands': ['VimFilerTab', 'VimFiler', 'VimFilerExplorer'],
	\   'mappings': ['<Plug>(vimfiler_switch)'],
	\   'explorer': 1,
	\ }}

NeoBundleLazy 'gregsexton/gitv', {
      \ 'depends': ['tpope/vim-fugitive'],
      \ 'autoload': {
      \   'commands': ['Gitv'],
      \ }}

NeoBundleLazy 'davidhalter/jedi-vim', {
	\ 'autoload': {
	\   'filetypes': ['python', 'python3', 'djangohtml'],
	\ }}

NeoBundleLazy 'mattn/emmet-vim', {
        \ 'autoload': {
        \   'filetypes': ['html', 'xhtml', 'php', 'css', 'scss', 'htmldjango'],
        \ }}

NeoBundleLazy 'lilydjwg/colorizer', {
	\ 'autoload': {
	\   'filetypes': ['css', 'scss'],
	\ }}

NeoBundleLazy 'thinca/vim-quickrun', {
	\ 'autoload': {
	\   'mappings': [['nxo', '<Plug>(quickrun)']],
	\ }}

NeoBundleLazy 'sjl/gundo.vim', {
	\ 'autoload': {
	\   'commands': ['GundoToggle'],
	\}}

NeoBundleLazy 'vim-jp/vimdoc-ja', {
	\ 'autoload': {
	\   'commands': ['help']
	\ }}

NeoBundleLazy 'kana/vim-smartchr', {
        \ 'autoload': {
        \   'insert': 1,
        \ }}

NeoBundleLazy 'osyo-manga/vim-over', {
        \ 'autoload': {
        \   'commands': ['OverCommandLine']
        \ }}

" scssをハイライトするプラグイン
NeoBundleLazy 'cakebaker/scss-syntax.vim', {
	\ 'autoload': {
	\   'filetypes': ['scss'],
	\ }}

NeoBundleLazy 'AtsushiM/search-parent.vim', {
	\ 'autoload': {
	\   'filetypes': ['scss'],
	\ }}

NeoBundleLazy 'AtsushiM/sass-compile.vim', {
	\ 'autoload': {
	\   'filetypes': ['scss'],
	\ }}

NeoBundleLazy 'AtsushiM/RetinaResize', {
	\ 'autoload': {
	\   'filetypes': ['html', 'php', 'css', 'scss', 'htmldjango'],
	\ }}

NeoBundleLazy 'othree/html5.vim', {
	\ 'autoload': {
	\   'filetypes': ['html', 'htmldjango', 'php'],
	\ }}

NeoBundleLazy 'xsbeats/vim-blade', {
	\ 'autoload': {
	\   'filetypes': ['php'],
	\ }}

NeoBundleLazy 'kchmck/vim-coffee-script', {
	\ 'autoload': {
	\   'filetypes': ['coffee'],
	\ }}

NeoBundleLazy 'mjbrownie/django-template-textobjects', {
	\ 'autoload': {
	\   'filetypes': ['htmldjango'],
	\ }}

NeoBundleLazy 'kannokanno/previm', {
	\ 'autoload': {
	\   'filetypes': ['markdown'],
	\ }}

" quickrunにhookをいれるプラグイン
NeoBundle 'osyo-manga/shabadou.vim'

syntax on
filetype plugin on
filetype indent on

call neobundle#end()

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" BASIC CONFIGURATION							      {{{
"--------------------------------------------------------------------------------
if has("win32")
  let &termencoding = &encoding              "set encoding より上に書く.vim-refの文字化け対応
endif
set nocompatible                             "VIM互換にしない
set fileformat=unix                          "改行コード(LF)
set encoding=utf-8			     "デフォルト
set fileencodings=guess,ucs-bom,ucs-2le,ucs-2,iso-2022-jp-3,utf-8,euc-jisx0213,euc-jp
set nobomb                                   "BOMを削除
set autoread                                 "更新時自動再読込み
set ambiwidth=double			     "全角記号を正しく表示させる
set backspace=indent,eol,start               "バックスペースで消す
set nowritebackup                            "バックアップを書かない
set nobackup                                 "バックアップファイルをつくらない
set noswapfile                               "swapをつくらない
set ruler                                    "カーソルが何行目の何列目に置かれているかを表示
set wildmenu                                 "コマンド補完を強化
set wildmode=list,full                       "リスト表示
set helplang=ja,en                           "日本語ヘルプ@enで英語
set hidden                                   "編集中でも他のファイルを開けるようにする
set iminsert=0                               "insertモードで自動で日本語切り替えさせない
set imsearch=0                               "serachで自動で日本語切り替えさせない
set whichwrap=b,s,h,s,<,>,[,]                "カーソルを行頭、行末で止まらないようにする
set visualbell t_vb=                         "警告音と警告フラッシュをオフ
set showcmd				     "ステータスライン表示
set laststatus=2                             "常にステータスライン表示
set scrolloff=10			     "10行以上でスクロール
autocmd FileType * set formatoptions-=ro     "改行時にコメントが自動挿入されない
source $VIMRUNTIME/macros/matchit.vim        "対応タグにとべるように
colorschem pablo                             "カラースキーマ
"不可視文字の設定
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%,eol:$
set nf=alpha,hex                             "アルファベットをインクリメント、8進数除去
set tabstop=4
set softtabstop=4
set shiftwidth=4
setlocal autoindent
setlocal smartindent
set lazyredraw
set viminfo+=n~/vimfiles/tmp/viminfo.txt
set noundofile
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" SERACH CONFIGURATION 						              {{{
"--------------------------------------------------------------------------------
set ignorecase                               "小文字の検索でも大文字も見つかるようにする
set smartcase                                "ただし大文字も含めた検索の場合はその通りに検索する
set incsearch                                "インクリメンタルサーチを行う
set nowrapscan                               "(no)検索をファイルの末尾まで検索したら、ファイルの先頭へループする
set hlsearch			             "検索結果にハイライト

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" VIMRC CONFIGURATION 							      {{{
"--------------------------------------------------------------------------------
" vimrc gvimrc 編集
nnoremap <silent> <Space>ev :edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg :edit $MYGVIMRC<CR>

" vimrc gvimrc 更新
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> <Space>rg :<C-u>source $MYGVIMRC<CR>

" vimrc gvimrc 自動更新
augroup MyAutoCmd
	"autocmd!
augroup END
"
if !has('gui_running') && !(has('win32') || has('win64'))
	"autocmd MyAutoCmd BufWritePost $MYVIMRC nested source $MYVIMRC
else
	"autocmd MyAutoCmd BufWritePost $MYVIMRC source $MYVIMRC |
				\if has('gui_running') | source $MYGVIMRC
	"autocmd MyAutoCmd BufWritePost $MYGVIMRC if has('gui_running') | source $MYGVIMRC
endif
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" KEY MAPPING 								      {{{
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

" Shift + 矢印でウィンドウサイズを変更
call submode#enter_with('winsize', 'n', '', '<S-l>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<S-h>', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<S-j>', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<S-k>', '<C-w>+')
call submode#map('winsize', 'n', '', 'l', '<C-w>>')
call submode#map('winsize', 'n', '', 'h', '<C-w><')
call submode#map('winsize', 'n', '', 'j', '<C-w>-')
call submode#map('winsize', 'n', '', 'k', '<C-w>+')

" 選択したテキストの移動
xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)

"キャメルケース単位の移動
map <silent> W <Plug>CamelCaseMotion_w
map <silent> B <Plug>CamelCaseMotion_b

" 括弧補完
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

" 括弧補完したくない場合
inoremap {}} {}
inoremap []] []
inoremap ()) ()
inoremap """ ""
inoremap ''' ''
inoremap <>> <>

" Exモードなんて使わない
map Q <Nop>

" インサート抜ける
inoremap jj <ESC>

" インサート キル・ヤンク
inoremap <Leader>k <ESC><RIGHT>d$a
inoremap <Leader>p <ESC>pa

" 全選択 vaeとかでもいけるからいらんかも
nnoremap <silent> <Space>a ggV<S-g>$

" %の置き換え
nmap mm %
vmap mm %

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

" 改行
" ノーマルモード中でもエンターキーで改行挿入でノーマルモードに戻る
nnoremap <CR> i<CR><ESC>
"行末のときとかはこっちがいいよ
nnoremap <C-CR> o<ESC>
" oの改行
inoremap <C-CR> <ESC>o

" バッファ
nnoremap [buffer] <Nop>
nmap <Space>b [buffer]
nnoremap <silent> [buffer]p :bprevious<CR>
nnoremap <silent> [buffer]n :bnext<CR>
nnoremap <silent> [buffer]b :b#<CR>
nnoremap <silent> [buffer]d :bdelete<CR>
nnoremap <silent> [buffer]c :enew<CR>

" フォントサイズ
nnoremap + :Fontzoom +1<CR>
nnoremap - :Fontzoom -1<CR>
nnoremap ! :Fontzoom!<CR>

" 縦連番インクリメント
command! -count -nargs=1 ContinuousNumber let c = col('.')|for n in range(1, <count>?<count>-line('.'):1)|exec 'normal! j' . n . <q-args>|call cursor('.', c)|endfor
vnoremap <silent> <C-a>   :ContinuousNumber <C-a><CR>
vnoremap <silent> <C-x>   :ContinuousNumber <C-x><CR>
vnoremap <silent>+   :ContinuousNumber <C-a><CR>
vnoremap <silent>-   :ContinuousNumber <C-x><CR>

"置換 vim-over
nnoremap <Backspace> :OverCommandLine<CR>%s/
vnoremap <Backspace> "xy:OverCommandLine<CR>%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>

" Switchの定義追加
let g:switch_custom_definitions =
    \[
    \	['on', 'off'],
    \	['relative', 'absolute'],
    \	['margin', 'padding'],
    \	['top', 'right', 'bottom', 'left'],
    \	['月', '火', '水', '木', '金', '土', '日'],
    \	['start', 'end'],
    \	['jpg', 'png', 'gif'],
    \]

" true falseのスイッチ
nnoremap ^ :Switch<CR>

" 複数ハイライト
nmap <Space>h <Plug>(quickhl-manual-this)
xmap <Space>h <Plug>(quickhl-manual-this)
nmap <Space>H <Plug>(quickhl-manual-reset)
xmap <Space>H <Plug>(quickhl-manual-reset)

" Diff
:cnoremap <C-d> vertical diffsplit

" Excite
:cnoremap <C-e> ExciteTranslate<CR>

" QuickFixおよびHelpでは q でバッファを閉じる
autocmd MyAutoCmd FileType help,qf,ref-webdict nnoremap <buffer> q <C-w>c

" djangoテンプレートに素早く色づけ
nnoremap <C-d> :set ft=htmldjango<CR>

" ヴィジュアルモードでインデント調整したらまたヴィジュアルモードに戻る
vnoremap < <gv
vnoremap > >gv|

" 線を引こう
inoremap <Leader>l= <ESC>80A=<ESC>a
inoremap <Leader>l- <ESC>80A-<ESC>a
inoremap <Leader>e= <ESC>35A=<ESC>a<SPACE><SPACE>END<SPACE><SPACE><ESC>35A=<ESC>a

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

" imgタグ内のwidthとheightを1/2にする
nnoremap <Space>2 :RetinaResize<CR>

" エクスプローラーで開く系
nnoremap <Leader>e. :silent ! start .<CR>
nnoremap <Leader>epp :silent ! start C:/Python34/<CR>
nnoremap <Leader>epd :silent ! start C:/Python34/Lib/site-packages/django/<CR>

noremap <Leader>bf :silent ! start firefox %<CR>
noremap <Leader>bc :silent ! start chrome %<CR>
noremap <Leader>be :silent ! start IEXPLORE %<CR>
noremap <Leader>bm :PrevimOpen<CR>

" なぜか"でレジスタが使えないので置換してます
vnoremap q "
nnoremap q "

" 今開いているファイルのディレクトリでコンソールを開く
let g:my_batch_dir='C:/Users/N-089/me/mybat/'
let g:my_open_shell_file='open_shell.vbs'
nnoremap <Space>oc :silent ! C:/Users/gungu/me/batches/open_shell.vbs %:h<CR>

vmap ; :Alignta<Space>

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" TEXTOBJ CONFIGURATION							      {{{
"--------------------------------------------------------------------------------
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
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" OPERATOR CONFIGURATION						      {{{
"--------------------------------------------------------------------------------
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

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" VIM-SMARTCHR CONFIGURATION                                                  {{{
"--------------------------------------------------------------------------------
let bundle = neobundle#get('vim-smartchr')
function! bundle.hooks.on_source(bundle)
  "inoremap <expr> , smartchr#one_of(', ', ',')

  "inoremap <expr> =
  "      \ search('\(&\<bar><bar>\<bar>+\<bar>-\<bar>/\<bar>>\<bar><\) \%#', 'bcn')? '<bs>= '
  "      \ : search('\(*\<bar>!\)\%#', 'bcn') ? '= '
  "      \ : smartchr#one_of(' = ', '=', ' == ')
  augroup MyAutoCmd
    " Substitute .. into -> .
    autocmd FileType c,cpp inoremap <buffer> <expr> . smartchr#loop('.', '->', '...')
    "autocmd FileType perl,php inoremap <buffer> <expr> . smartchr#loop(' . ', '->', '.')
    "autocmd FileType perl,php inoremap <buffer> <expr> - smartchr#loop('-', '->')
    autocmd FileType vim inoremap <buffer> <expr> . smartchr#loop('.', ' . ', '..', '...')

    autocmd FileType haskell,int-ghci
          \ inoremap <buffer> <expr> + smartchr#loop('+', ' ++ ')
          \| inoremap <buffer> <expr> - smartchr#loop('-', ' -> ', ' <- ')
          \| inoremap <buffer> <expr> $ smartchr#loop(' $ ', '$')
          \| inoremap <buffer> <expr> \ smartchr#loop('\ ', '\')
          \| inoremap <buffer> <expr> : smartchr#loop(':', ' :: ', ' : ')
          \| inoremap <buffer> <expr> . smartchr#loop('.', ' . ', '..')

    autocmd FileType scala
          \ inoremap <buffer> <expr> - smartchr#loop('-', ' -> ', ' <- ')
          \| inoremap <buffer> <expr> = smartchr#loop(' = ', '=', ' => ')
          \| inoremap <buffer> <expr> : smartchr#loop(': ', ':', ' :: ')
          \| inoremap <buffer> <expr> . smartchr#loop('.', ' => ')

    autocmd FileType eruby
          \ inoremap <buffer> <expr> > smartchr#loop('>', '%>')
          \| inoremap <buffer> <expr> < smartchr#loop('<', '<%', '<%=')
  augroup END
endfunction
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" FOLDING CONFIGURATION 						      {{{
"--------------------------------------------------------------------------------
set foldmethod=marker
set foldtext=foldCC#foldtext()

" 折り畳みの行頭行末
let g:foldCCtext_head = '"( /^^)"'
let g:foldCCtext_tail = '"(^^ )". (v:foldend-v:foldstart+1)'

" 折り畳みを開く
nnoremap <expr>l  foldclosed('.') != -1 ? 'zo' : 'l'

" 折り畳みを閉じる
nnoremap <silent>; :<C-u>call <SID>smart_foldcloser()<CR>

" 折り畳みマークの作成
nnoremap  z[ :<C-u>call <SID>put_foldmarker(0)<CR>
nnoremap  z] :<C-u>call <SID>put_foldmarker(1)<CR>

" 折り畳みを全て開く
nnoremap <silent>zl :<C-u>set foldlevel=<C-r>=foldlevel('.')<CR><CR>

" 折り畳みを全て閉じる
nnoremap <silent>z; zMzvzc

function! s:smart_foldcloser()
  if foldlevel('.') == 0
    norm! zM
    return
  endif

  let foldc_lnum = foldclosed('.')
  norm! zc
  if foldc_lnum == -1
    return
  endif

  if foldclosed('.') != foldc_lnum
    return
  endif
  norm! zM
endfunction

function! s:put_foldmarker(foldclose_p)
  let crrstr = getline('.')
  let padding = crrstr=='' ? '' : crrstr=~'\s$' ? '' : ' '
  let [cms_start, cms_end] = ['', '']
  let outside_a_comment_p = synIDattr(synID(line('.'), col('$')-1, 1), 'name') !~? 'comment'
  if outside_a_comment_p
    let cms_start = matchstr(&cms,'\V\s\*\zs\.\+\ze%s')
    let cms_end = matchstr(&cms,'\V%s\zs\.\+')
  endif
  let fmr = split(&fmr, ',')[a:foldclose_p]. (v:count ? v:count : '')
  exe 'norm! A'. padding. cms_start. fmr. cms_end
endfunction
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" MARK CONFIGURATION							      {{{
"--------------------------------------------------------------------------------
" 基本マップ
nnoremap [Mark] <Nop>
nmap m [Mark]

" 現在位置をマーク
if !exists('g:markrement_char')
    let g:markrement_char = [
    \     'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    \     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    \ ]
endif
nnoremap <silent>[Mark]k :<C-u>call <SID>AutoMarkrement()<CR>
function! s:AutoMarkrement()
    if !exists('b:markrement_pos')
        let b:markrement_pos = 0
    else
        let b:markrement_pos = (b:markrement_pos + 1) % len(g:markrement_char)
    endif
    execute 'mark' g:markrement_char[b:markrement_pos]
    echo 'marked' g:markrement_char[b:markrement_pos]
endfunction

" 次/前のマーク
nnoremap [Mark]n ]`
nnoremap [Mark]p [`

" 前回終了位置に移動
autocmd MyAutoCmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line('$') | exe 'normal g`"' | endif

" バッファ読み込み時にマークを初期化
autocmd MyAutoCmd BufReadPost * delmarks!
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" VIMFILER CONFIGURATION 						      {{{
"--------------------------------------------------------------------------------
" VimFiler を開く
nnoremap <Space>ff :VimFilerExplorer<CR>
let s:hooks = neobundle#get_hooks("vimfiler")
function! s:hooks.on_source(bundle)
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
    "更新
    nmap <buffer> R <Plug>(vimfiler_redraw_screen)
    "移動
    nmap <buffer> <C-l> <C-w>l
  endfunction
endfunction
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" NEOCOM CONFIGURATION 						      {{{
"--------------------------------------------------------------------------------
"neocomplete の設定
if s:meet_neocomplete_requirements()
    "neocompleteの開始
    let g:neocomplete#enable_at_startup = 1

    let s:hooks = neobundle#get_hooks("neocomplete.vim")
    function! s:hooks.on_source(bundle)

	" 大文字が入力されるまで大文字小文字の区別を無視する
	let g:neocomplete#enable_smart_case = 1

	" 補完ウィンドウの設定
	set completeopt=menuone

	" これでキャメルケースもアンダーバーもいける
	let g:neocomplete#enable_fuzzy_completion = 1

	" ポップアップメニューで表示される候補の数
	let g:neocomplete#max_list = 200

	" シンタックスをキャッシュするときの最小文字長
	let g:neocomplete#sources#syntax#min_keyword_length = 3

	if !exists('g:neocomplete#keyword_patterns')
	    let g:neocomplete#keyword_patterns = {}
	endif
	let g:neocomplete#keyword_patterns._ = '\h\w*'

	" vimshellで用いたコマンドを補完
	let g:neocomplete#sourses#dictionary#dictionaries = {
	  \ 'default' : '',
	  \ 'vimshell' : $HOME.'/.vimshell/command-history'
	  \ }

	let g:neocomplete#skip_auto_completion_time = ''

    endfunction

"neocomplcache の設定
else
    "neocomplcacheの開始
    let g:neocomplcache_enable_at_startup = 1

    let s:hooks = neobundle#get_hooks("neocomplcache.vim")
    function! s:hooks.on_source(bundle)

      " 大文字が入力されるまで大文字小文字の区別を無視する
      let g:neocomplcache_enable_smart_case = 1

      " 補完ウィンドウの設定
      set completeopt=menuone

      " _(アンダースコア)区切りの補完を有効化
      let g:neocomplcache_enable_underbar_completion = 1
      let g:neocomplcache_enable_camel_case_completion  =  1

      " ポップアップメニューで表示される候補の数
      let g:neocomplcache_max_list = 20

      " シンタックスをキャッシュするときの最小文字長
      let g:neocomplcache_min_syntax_length = 3

      " vimshellで用いたコマンドを補完
      let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default' : '',
        \ 'vimshell' : '~/.vimshell/command-history'
        \ }

    endfunction
endif

"Tabで補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" UNITE CONFIGURATION 							      {{{
"--------------------------------------------------------------------------------
"キーマッピング
nnoremap [unite] <Nop>
nmap <Space>u [unite]
nnoremap <silent> [unite]c :<C-u>Unite colorscheme -auto-preview<CR>
nnoremap <silent> [unite]o :<C-u>Unite outline<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]t :<C-u>Unite tab<CR>
nnoremap <silent> [unite]f :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]d :<C-u>Unite directory_mru<CR>
nnoremap <silent> [unite]k :<C-u>Unite bookmark<CR>
nnoremap <silent> [unite]m :<C-u>Unite mark<CR>
nnoremap <silent> [unite]y :<C-u>Unite yankround<CR>
nnoremap <silent> [unite]s :<C-u>Unite snippet<CR>
nnoremap <silent> [unite]w :<C-u>Unite webcolorname<CR>
nnoremap <silent> [unite], :<C-u>Unite menu:shortcut<CR>
nnoremap <silent> [unite]e :<C-u>Unite codic<CR>
vnoremap /g y:Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

" ファイル検索用
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry

" search a file in the filetree
nnoremap <space><space> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)

" カーソル下の文字をag検索
nmap <space>* :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>\ :Ag<Space>

let s:hooks = neobundle#get_hooks("unite.vim")
function! s:hooks.on_source(bundle)
  " uniteを挿入モードで開始
  let g:unite_enable_start_insert = 1
  " 縦割り
  let g:unite_enable_split_vertically = 1
  " use vimfiler to open directory
  call unite#custom_default_action('source/bookmark/directory', 'vimfiler')
  call unite#custom_default_action('directory', 'vimfiler')
  call unite#custom_default_action('directory_mru', 'vimfiler')
  autocmd MyAutoCmd FileType unite call s:unite_settings()
  function! s:unite_settings()
    imap <buffer> <Esc><Esc> <Plug>(unite_exit)
    nmap <buffer> <Esc> <Plug>(unite_exit)
    nmap <buffer> <C-n> <Plug>(unite_select_next_line)
    nmap <buffer> <C-p> <Plug>(unite_select_previous_line)
  endfunction
  "let g:unite_source_grep_command = 'ag'

  "ショートカット登録
  let g:unite_source_menu_menus = {
\   "shortcut" : {
\       "description" : "sample unite-menu",
\       "command_candidates" : [
\           ["KEYMAP MEMO", "edit ~/Dropbox/vimkeymap.txt"],
\           ["WEB URL LIST", "edit ~/Dropbox/vimwebshort.txt"],
\           ["HTML SPECIAL", "edit ~/Dropbox/html-specialword.txt"],
\	    ["AllMap", "Unite output:AllMap" ],
\	    ["vim", "OpenBrowser http://mba-hack.blogspot.jp/2013/02/vim.html" ],
\       ],
\   },
\}
endfunction
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" SNIPPET CONFIGURATION 						      {{{
"--------------------------------------------------------------------------------
let s:hooks = neobundle#get_hooks("neosnippet.vim")
function! s:hooks.on_source(bundle)
  " キーマッピング
  imap <C-TAB>     <Plug>(neosnippet_expand_or_jump)
  smap <C-TAB>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-TAB>     <Plug>(neosnippet_expand_target)
  " SuperTab like snippets behavior.
  imap <expr><C-TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"
  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif
  " スニッペット辞書
  let g:neosnippet#snippets_directory='~/vimfiles/snippets'
  " 著者名
  let g:snips_author='Gun Kimura'
  " メールアドレス
  let g:snips_email='gun.kimura@petabit.co.jp'
  " git
  let g:snips_github=''
endfunction
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" GIT CONFIGURATION 							      {{{
"--------------------------------------------------------------------------------
"キーマッピング
nnoremap [git] <Nop>
nmap <Space>g [git]
nnoremap <silent> [git]d :<C-u>Gdiff<Enter>
nnoremap <silent> [git]s :<C-u>Gstatus<Enter>
nnoremap <silent> [git]l :<C-u>Glog<Enter>
nnoremap <silent> [git]a :<C-u>Gwrite<Enter>
nnoremap <silent> [git]c :<C-u>Gcommit<Enter>
nnoremap <silent> [git]C :<C-u>Git commit --amend<Enter>
nnoremap <silent> [git]b :<C-u>Gblame<Enter>
nnoremap <silent> [git]r :<C-u>Gremove<Enter>

let s:hooks = neobundle#get_hooks("gitv")
function! s:hooks.on_source(bundle)
  autocmd MyAutoCmd FileType gitv call s:gitv_settings()
  function! s:gitv_settings()
    setlocal iskeyword+=/,-,.
    nnoremap <silent><buffer> C :<C-u>Git checkout <C-r><C-w><CR>
  endfunction
endfunction

let g:gitgutter_enabled = 0
nnoremap <silent> [git]g :<C-u>GitGutterToggle<CR>
nnoremap <silent> [git]h :<C-u>GitGutterLineHighlightsToggle<CR>
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" QUICKRUN CONFIGURATION					              {{{
"--------------------------------------------------------------------------------
nmap <Leader>r <Plug>(quickrun)
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'runner'    : 'vimproc',
      \ 'runner/vimproc/updatetime' : 60,
      \ 'outputter' : 'error',
      \ 'outputter/error/success' : 'buffer',
      \ 'outputter/error/error'   : 'quickfix',
      \ 'outputter/buffer/close_on_empty' : 1,
      \ }
"let s:hooks = neobundle#get_hooks("vim-quickrun")
"function! s:hooks.on_source(bundle)
"  let g:quickrun_config = {
"      \ "*": {"runner": "remote/vimproc"},
"      \ }
"  let g:quickrun_config.python = {
"\   "_" : {
"
"\       "hook/shabadoubi_touch_henshin/enable" : 1,
"\       "hook/shabadoubi_touch_henshin/wait" : 20,
"\       "outputter/buffer/split" : ":botright 8sp",
"\       "runner" : "vimproc",
"\       "runner/vimproc/updatetime" : 40,
"\   }
"\}
"hook/close_unite_quickfix/enable_hook_loaded" : 1,
"hook/unite_quickfix/enable_success" : 1,
"hook/close_quickfix/enable_exit" : 1,
"hook/close_buffer/enable_failure" : 1,
"hook/close_buffer/enable_empty_data" : 1,
"outputter" : 'multi:buffer:quickfix',
"endfunction
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" GUNDO CONFIGURATION							      {{{
"--------------------------------------------------------------------------------
nnoremap <Leader>u :GundoToggle<CR>
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" JEDI CONFIGURATION 							      {{{
"--------------------------------------------------------------------------------
let s:hooks = neobundle#get_hooks("jedi-vim")
function! s:hooks.on_source(bundle)
  " jediにvimの設定を任せると'completeopt+=preview'するので
  " 自動設定機能をOFFにし手動で設定を行う
  let g:jedi#auto_vim_configuration = 0
  " 補完の最初の項目が選択された状態だと使いにくいためオフにする
  let g:jedi#popup_select_first = 0
  " quickrunと被るため大文字に変更
  let g:jedi#rename_command = '<Leader>R'
  " gundoと被るため大文字に変更 (2013-06-24 10:00 追記）
  "let g:jedi#goto_command = '<Leader>G'
endfunction

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" OPENBROWSER CONFIGURATION 						      {{{
"--------------------------------------------------------------------------------
let g:netrw_nogx = 1
nmap gx <plug>(openbrowser-smart-search)
vmap gx <plug>(openbrowser-smart-search)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>
"===================================  end  ===================================}}}

"--------------------------------------------------------------------------------
" TAB CONFIGURATION 							      {{{
"--------------------------------------------------------------------------------
" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

nnoremap    [Tab]   <Nop>
nmap    t [Tab]

" t+数値でタブジャンプ
for n in range(1, 9)
  execute 'nnoremap <silent> [Tab]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" tc 新しいタブを一番右に作る
map <silent> [Tab]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tab]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tab]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tab]p :tabprevious<CR>

call submode#enter_with('changetab', 'n', '', '[Tab]n', 'gt')
call submode#enter_with('changetab', 'n', '', '[Tab]p', 'gT')
call submode#map('changetab', 'n', '', 'n', 'gt')
call submode#map('changetab', 'n', '', 'p', 'gT')

" タブ毎にカレントディレクトリ設定
command! -nargs=? TabpageCD
  \ execute 'cd' fnameescape(<q-args>) | let t:cwd = getcwd()

augroup tabpagecwd
  autocmd!
  autocmd TabEnter * if !exists('t:cwd') | let t:cwd = getcwd() | endif |
    \  execute 'TabpageCD' fnameescape(t:cwd)
augroup END

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" REF CONFIGURATION	       					              {{{
"--------------------------------------------------------------------------------
"lynx.exe の絶対パス
let s:lynx = "C:/Program Files (x86)/Lynx for Win32/lynx.exe"
"lynx.cfg の絶対パス
let s:cfg  = "C:/Program Files (x86)/Lynx for Win32/lynx.cfg"

" phpマニュアルを見る
let g:ref_phpmanual_path = $HOME . '/vimfiles/refs/php-chunked-xhtml'
autocmd FileType php nmap <Space>rp :<C-u>Ref phpmanual<Space>

" pydocを見る
let g:ref_pydoc_cmd = 'python C:/Python27/Lib/pydoc.py'
autocmd FileType python nmap <Space>rp :<C-u>Ref pydoc<Space>

"webdictサイトの設定
let g:ref_source_webdict_sites = {
\   'je': {
\     'url': 'http://dictionary.infoseek.ne.jp/jeword/%s',
\   },
\   'ej': {
\     'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
\   },
\   'wiki': {
\     'url': 'http://ja.wikipedia.org/wiki/%s',
\   },
\ }

"デフォルトサイト
let g:ref_source_webdict_sites.default = 'ej'

"出力に対するフィルタ。最初の数行を削除
function! g:ref_source_webdict_sites.je.filter(output)
  return join(split(a:output, "\n")[15 :], "\n")
endfunction
function! g:ref_source_webdict_sites.ej.filter(output)
  return join(split(a:output, "\n")[15 :], "\n")
endfunction
function! g:ref_source_webdict_sites.wiki.filter(output)
  return join(split(a:output, "\n")[17 :], "\n")
endfunction

nmap <Space>rj :<C-u>Ref webdict je<Space>
nmap <Space>re :<C-u>Ref webdict ej<Space>
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" QFixHowm CONFIGURATION                                                      {{{
"--------------------------------------------------------------------------------
"QFixHowmキーマップ
let QFixHowm_Key = 'g'

"howm_dirはファイルを保存したいディレクトリを設定。
let howm_dir             = $HOME.'/Dropbox/memo'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'

let QFixHowm_DiaryFile = 'diary/%Y/%m/%Y-%m-%d-000000.howm'
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" SYNTASTIC CONFIGURATION                                                           {{{
"--------------------------------------------------------------------------------
let g:syntastic_check_on_open=0 "ファイルを開いたときはチェックしない
let g:syntastic_check_on_save=1 "保存時にはチェック
let g:syntastic_auto_loc_list=1 "エラーがあったら自動でロケーションリストを開く
let g:syntastic_loc_list_height=6 "エラー表示ウィンドウの高さ
set statusline+=%#warningmsg# "エラーメッセージの書式
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['jshint'] "jshintを使う
let g:syntastic_json_checkers = ['jsonhint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['ruby', 'javascript'],
      \ 'passive_filetypes': ['php', 'css']
      \ }
"エラー表示マークを変更
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='!'
let g:syntastic_quiet_messages = {"level":"warnings"}
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" YANK CONFIGURATION                                                           {{{
"--------------------------------------------------------------------------------
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" FILETYPE CONFIGURATION 						      {{{
"--------------------------------------------------------------------------------
" python
function! InitPython()
	setlocal expandtab
	setlocal tabstop=8
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
	setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
    " djangoですごくlogger.info()使うから
    inoremap <Leader>lo logging.debug()<LEFT>
    inoremap <Leader>lp logger.info()<LEFT>
    inoremap "! """
	set tags=$HOME/ctags/ecd-django.tags
	set tags+=C:/Users/GUN/ctags/django.tags

	let s:save_cpo = &cpo
	set cpo&vim

	if g:jedi#popup_select_first == 0
	    inoremap <buffer> . .<C-R>=jedi#complete_opened() ? "" : "\<lt>C-X>\<lt>C-O>\<lt>C-P>"<CR>
	endif

	let &cpo = s:save_cpo
	unlet s:save_cpo
endfunction
autocmd BufEnter * if &filetype == "python" | call InitPython() | endif

" html css scss js
function! InitHtml()
	setlocal tabstop=4
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
	setlocal cinwords=if,elseif,else,for,while,try,except,class
	"inoremap <buffer> </ </<C-x><C-o>
	vmap <Leader>< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
	vmap <Leader>* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
	vmap <Leader>d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>
endfunction
autocmd BufEnter * if &filetype == "html" || &filetype == "xhtml" || &filetype == "scss" || &filetype == "css" | call InitHtml() | endif

" djangohtml
function! InitHtmlDjango()
        setlocal expandtab
        setlocal tabstop=4
        setlocal softtabstop=4
        setlocal shiftwidth=4

        setlocal autoindent
        setlocal smartindent
        inoremap <buffer> </ </<C-x><C-o>
        vmap <Leader>< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
        vmap <Leader>* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
        vmap <Leader>d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>
	inoremap {{ {{<SPACE><SPACE>}}<LEFT><LEFT><LEFT>
	inoremap {% {%<SPACE><SPACE>%}<LEFT><LEFT><LEFT>
endfunction
autocmd BufEnter * if &filetype == "htmldjango" | call InitHtmlDjango() | endif

" php
function! InitPHP()
    setlocal expandtab
	setlocal tabstop=4
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
	setlocal cinwords=if,elseif,else,for,while,try,except,class
	vmap <Leader>< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
	vmap <Leader>* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
	vmap <Leader>d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>

	" set: dictionary= で辞書ファイルを指定
	set dictionary=~/vimfiles/dict/php.dict

    " Laravel仕様
    inoremap <Leader>ld \Debugbar::info();<LEFT><LEFT>
    inoremap <Leader>lc config('');<LEFT><LEFT><LEFT>
    nnoremap <Leader>lte :set tags=C:/Users/N-089/me/projects/ecd/src/tags<CR>
    nnoremap <Leader>lme :! cd C:/Users/N-089/me/projects/ecd/src/ && ctags --languages=php --exclude=node_modules -R *<CR>
    nnoremap <Leader>lts :set tags=C:/Users/N-089/me/projects/shima/src/tags<CR>
    nnoremap <Leader>lms :! cd C:/Users/N-089/me/projects/shima/src/ && ctags --languages=php --exclude=node_modules -R *<CR>

	set tags=C:/Users/N-089/me/projects/shima/src/tags

	let b:textobj_function_select = function('textobj#function#java#select')

	if exists('b:undo_ftplugin')
	  let b:undo_ftplugin .= '|'
	else
	  let b:undo_ftplugin = ''
	endif
	let b:undo_ftplugin .= 'unlet b:textobj_function_select'

endfunction
autocmd BufEnter * if &filetype == "php" | call InitPHP() | endif

" blade.php
function! InitBlade()
	setlocal tabstop=4
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
    "inoremap <buffer> </ </<C-x><C-o>
	vmap <Leader>< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
	vmap <Leader>* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
	vmap <Leader>d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>
	inoremap {{ {{<SPACE><SPACE>}}<LEFT><LEFT><LEFT>
    inoremap {! {!!<SPACE><SPACE>!!}<LEFT><LEFT><LEFT><LEFT>
    inoremap [- {{--<SPACE><SPACE>--}}<LEFT><LEFT><LEFT><LEFT><LEFT>

	" タグ飛びがきかなくなるのでphpに変換とbladeに変換をいれる
	nnoremap fp :set ft=php<CR>
	nnoremap fb :set ft=blade<CR>

	" set: dictionary= で辞書ファイルを指定
	set dictionary=~/vimfiles/dict/php.dict
endfunction
autocmd BufEnter * if &filetype == "blade" | call InitBlade() | endif

" js
function! InitJs()
	setlocal expandtab
	setlocal tabstop=4
	setlocal softtabstop=4
	setlocal shiftwidth=4

	setlocal autoindent
	setlocal smartindent
	setlocal cinwords=if,else,for,while
endfunction
autocmd BufEnter * if &filetype == "javascript" | call InitJs() | endif

au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
  autocmd!
  autocmd FileType json setlocal autoindent
  autocmd FileType json setlocal formatoptions=tcq2l
  autocmd FileType json setlocal textwidth=78 shiftwidth=2
  autocmd FileType json setlocal softtabstop=2 tabstop=8
  autocmd FileType json setlocal foldmethod=syntax
augroup END

autocmd BufRead,BufNewFile *.erb set filetype=ruby

"txtはhybridにタイプ変換する
au BufRead,BufNewFile *.txt set syntax=hybrid

autocmd BufRead,BufNewFile *.md set filetype=markdown

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" SASS CONFIGURATION                                                   {{{
"--------------------------------------------------------------------------------
" 編集したファイルから遡るフォルダの最大数
let g:sass_compile_cdloop = 5

" ファイル保存時に自動コンパイル（1で自動実行）
let g:sass_compile_auto = 0

" 自動コンパイルを実行する拡張子
let g:sass_compile_file = ['scss', 'sass']

" cssファイルが入っているディレクトリ名（前のディレクトリほど優先）
let g:sass_compile_cssdir = ['css', 'stylesheet']

" コンパイル実行前に実行したいコマンドを設定
" 例：growlnotifyによる通知
" let g:sass_compile_beforecmd = "growlnotify -t 'sass-compile.vim' -m 'start sass compile.'"
let g:sass_compile_beforecmd = ""

" コンパイル実行後に実行したいコマンドを設定
" 例：growlnotifyによる通知(${sasscompileresult}は実行結果)
"let g:sass_compile_aftercmd = 'growlnotify /t:"Warning" /pass:"growl" "引数ミスってるよ"'
nnoremap <Space>sc :SassCompile<CR>
nnoremap <Space>sf :CompassConfig<CR>

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" HTML CONFIGURATION	       					              {{{
"--------------------------------------------------------------------------------
function! s:char2entity(str)
  let result = a:str
  if a:str ==? '<'
    let result = '&lt;'
  elseif a:str ==? '>'
    let result = '&gt;'
  elseif a:str ==? '"'
    let result = '&quot;'
  elseif a:str ==? '&'
    let result = '&amp;'
  elseif a:str ==? '\'
    let result = '&yen;'
  elseif a:str ==? 'c'
    let result = '&copy;'
  elseif a:str ==? 'r'
    let result = '&reg;'
  elseif a:str ==? 's'
    let result = '&nbsp;'
  endif
  return result
endfunction

function! s:entity2char(str)
  let result = a:str
  if a:str ==? '&lt;'
    let result = '<'
  elseif a:str ==? '&gt;'
    let result = '>'
  elseif a:str ==? '&quot;'
    let result = '"'
  elseif a:str ==? '&amp;'
    let result = '&'
  elseif a:str ==? '&yen;'
    let result = '\'
  endif
  return result
endfunction

function! s:range2HtmlEntity() range
  silent execute "normal! gv:s/\\%V[crs\&<>\\\"]/\\= s:char2entity(submatch(0)) /g\<CR>"
endfunction

function! s:range2HtmlString() range
  silent execute "normal! gv:s/\\%V\&[^;#]\\+;/\\= s:entity2char(submatch(0)) /g\<CR>"
endfunction

" for range command
command! -range Str2HtmlEntity :<line1>,<line2>call s:range2HtmlEntity()
command! -range Entity2HtmlString :<line1>,<line2>call s:range2HtmlString()

vmap <silent> sx :Str2HtmlEntity<cr>
vmap <silent> sr :Entity2HtmlString<cr>

inoremap [htmlstring] <Nop>
imap <C-x> [htmlstring]
inoremap [htmlstring]< &lt;
inoremap [htmlstring]> &gt;
inoremap [htmlstring]& &amp;
inoremap [htmlstring]" &quot;
inoremap [htmlstring]\ &yen;
inoremap [htmlstring]c &copy;
inoremap [htmlstring]r &reg;
inoremap [htmlstring]<Space> &nbsp;

"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" WHITESPACE CONFIGURATION                                                   {{{
"--------------------------------------------------------------------------------
" unite,vimfilerでスペースが表示されるので、設定でOFFにします。
let g:better_whitespace_filetypes_blacklist = ['unite', 'vimfiler']
nmap <Space>ss :ToggleWhitespace<CR>
nmap <Space>dd :StripWhitespace<CR>
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" MY VIM LEVEL 								      {{{
"--------------------------------------------------------------------------------
function! Scouter(file, ...)
	let pat = '^\s*$\|^\s*"'
	let lines = readfile(a:file)
	if !a:0 || !a:1
		let lines = split(substitute(join(lines, "\n"), '\n\s*\\', '', 'g'), "\n")
	endif
	return len(filter(lines,'v:val !~ pat'))
endfunction
command! -bar -bang -nargs=? -complete=file Scouter
	\ echo Scouter(empty(<q-args>) ? $MYVIMRC : expand(<q-args>), <bang>0)
"===================================  END  ===================================}}}

