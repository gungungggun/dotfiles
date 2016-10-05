" VIM互換
if !&compatible
  set nocompatible
endif

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
	execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	" 管理するプラグインを記述したファイル
	let s:toml = '~/.config/dein/plugins.toml'
	let s:lazy_toml = '~/.config/dein/plugins_lazy.toml'
	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
	call dein#install()
endif

filetype plugin indent on
syntax enable


"--------------------------------------------------------------------------------
" BASIC CONFIGURATION {{{
"--------------------------------------------------------------------------------
set fileformat=unix                          "改行コード(LF)
set encoding=utf-8			     "デフォルト
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
"不可視文字の設定
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%,eol:$
set nf=alpha,hex
""アルファベットをインクリメント、8進数除去
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

set background=dark
colorscheme solarized

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

"--------------------------------------------------------------------------------
" GUNDO CONFIGURATION							      {{{
"--------------------------------------------------------------------------------
nnoremap <Leader>u :GundoToggle<CR>
"===================================  END  ===================================}}}

"--------------------------------------------------------------------------------
" LIGHTLINE CONFIGURATION                             {{{
"--------------------------------------------------------------------------------

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'mode_map': {'c': 'NORMAL'},
      \ 'active': {
      \   'left': [ ['mode', 'paste'], ['fugitive', 'filename'] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \ }
      \ }

function! MyModified()
	  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? ' ' : ''
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
				    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head())
						      return ' ' . fugitive#head()
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

												"===================================
												"END
												"===================================}}}
