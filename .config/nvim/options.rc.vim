set nocompatible                             "VIM互換にしない
set fileformat=unix                          "改行コード(LF)
set encoding=utf-8			     "デフォルト
"set fileencodings=guess,ucs-bom,ucs-2le,ucs-2,iso-2022-jp-3,utf-8,euc-jisx0213,euc-jp
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

colorscheme molokai
"set background=dark
"colorscheme solarized


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




