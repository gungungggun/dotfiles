" unite,vimfilerでスペースが表示されるので、設定でOFFに
let g:better_whitespace_filetypes_blacklist = ['unite', 'vimfiler']
nmap <Space>ss :ToggleWhitespace<CR>
nmap <Space>dd :StripWhitespace<CR>
