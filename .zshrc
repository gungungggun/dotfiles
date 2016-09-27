cd ~

export GOPATH=$HOME
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

export XDG_CONFIG_HOME=$HOME/.config

###########
# general
###########

# 自動補完を有効にする
autoload -U compinit
compinit

# vimのキーバインド
bindkey -v

# 左の表示
PROMPT='[%F{green}%d%f]# '

# 右の表示
#RPROMPT='[%F{green}%d%f]'

# 入力したコマンドが存在せずかつディレクトリ名と一致するならディレクトリに cd する
# 例 /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd

# tmuxの起動
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

###########
# color
###########

autoload colors
colors

export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# lsがカラー表示になるようエイリアスを設定
case "${OSTYPE}" in
darwin*)
# Mac
    alias ls="ls -GF"
    ;;
    linux*)
    # Linux
    alias ls='ls -F --color'
    ;;
esac


###########
# history
###########

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

# 古いコマンドと同じものは無視
setopt hist_save_no_dups

# historyコマンドは履歴に登録しない
setopt hist_no_store

# 履歴をインクリメンタルに追加
setopt inc_append_history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward


###########
# alias
###########

alias vi=nvim
alias ll='ls -la'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ag='ag -S --stats'
# sudoでaliasを効かす
alias sudo='sudo '

alias -g @g='| ag'

export WIN_HOME=/mnt/c/Users/gungu
alias wincd='cd $WIN_HOME'


###########
# my command
###########

# mkdir & cd
function mcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
