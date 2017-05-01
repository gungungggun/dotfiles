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
"try
"  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
"  call unite#filters#matcher_default#use(['matcher_fuzzy'])
"catch
"endtry

" search a file in the filetree
nnoremap <space><space> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)

" カーソル下の文字をag検索
"nmap <space>* :Ag <c-r>=expand("<cword>")<cr><cr>
"nnoremap <space>\ :Ag<Space>

"let s:hooks = neobundle#get_hooks("unite.vim")
"function! s:hooks.on_source(bundle)
"  " uniteを挿入モードで開始
"  let g:unite_enable_start_insert = 1
"  " 縦割り
"  let g:unite_enable_split_vertically = 1
"  " use vimfiler to open directory
"  call unite#custom_default_action('source/bookmark/directory', 'vimfiler')
"  call unite#custom_default_action('directory', 'vimfiler')
"  call unite#custom_default_action('directory_mru', 'vimfiler')
"  autocmd MyAutoCmd FileType unite call s:unite_settings()
"  function! s:unite_settings()
"    imap <buffer> <Esc><Esc> <Plug>(unite_exit)
"    nmap <buffer> <Esc> <Plug>(unite_exit)
"    nmap <buffer> <C-n> <Plug>(unite_select_next_line)
"    nmap <buffer> <C-p> <Plug>(unite_select_previous_line)
"  endfunction
"  "let g:unite_source_grep_command = 'ag'
"
"  "ショートカット登録
"  let g:unite_source_menu_menus = {
"\   "shortcut" : {
"\       "description" : "sample unite-menu",
"\       "command_candidates" : [
"\           ["KEYMAP MEMO", "edit ~/Dropbox/vimkeymap.txt"],
"\           ["WEB URL LIST", "edit ~/Dropbox/vimwebshort.txt"],
"\           ["HTML SPECIAL", "edit ~/Dropbox/html-specialword.txt"],
"\	    ["AllMap", "Unite output:AllMap" ],
"\	    ["vim", "OpenBrowser http://mba-hack.blogspot.jp/2013/02/vim.html" ],
"\       ],
"\   },
"\}
"endfunction


let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ tig                                                        ⌘ ,gt',
        \'normal ,gt'],
    \['▷ git status       (Fugitive)                                ⌘ ,gs',
        \'Gstatus'],
    \['▷ git diff         (Fugitive)                                ⌘ ,gd',
        \'Gdiff'],
    \['▷ git commit       (Fugitive)                                ⌘ ,gc',
        \'Gcommit'],
    \['▷ git log          (Fugitive)                                ⌘ ,gl',
        \'exe "silent Glog | Unite quickfix"'],
    \['▷ git blame        (Fugitive)                                ⌘ ,gb',
        \'Gblame'],
    \['▷ git stage        (Fugitive)                                ⌘ ,gw',
        \'Gwrite'],
    \['▷ git checkout     (Fugitive)                                ⌘ ,go',
        \'Gread'],
    \['▷ git rm           (Fugitive)                                ⌘ ,gr',
        \'Gremove'],
    \['▷ git mv           (Fugitive)                                ⌘ ,gm',
        \'exe "Gmove " input("destino: ")'],
    \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
        \'Git! push'],
    \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
        \'Git! pull'],
    \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['▷ git cd           (Fugitive)',
        \'Gcd'],
    \]
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>
