" 小文字の検索でも大文字も見つかるようにする
set ignorecase                               

" 大文字も含めた検索の場合はその通りに検索する
set smartcase                                

" インクリメンタルサーチを行う
set incsearch                                

"(no)検索をファイルの末尾まで検索したら、ファイルの先頭へループしない
set nowrapscan                               

" 検索結果にハイライト
set hlsearch			            

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
