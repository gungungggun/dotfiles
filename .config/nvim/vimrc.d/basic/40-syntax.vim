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
      \ 'passive_filetypes': ['php', 'html', 'css']
      \ }
"エラー表示マークを変更
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='!'
let g:syntastic_quiet_messages = {"level":"warnings"}
