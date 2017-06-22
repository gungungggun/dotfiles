#cd ~

###########
# env
###########

# 日本語を使用
export LANG=ja_JP.UTF-8

export EDITOR=nvim

export GOPATH=$HOME/go
export GO15VENDOREXPERIMENT=1
eval "$(direnv hook zsh)"

export ANDROID_HOME=/usr/local/share/android-sdk
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:~/.local/bin:/usr/local/bin
export PATH=$PATH:~/.nodebrew/current/bin
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export XDG_CONFIG_HOME=$HOME/.config
export NVIM_TUI_ENABLE_TRUE_COLOR=1

export WIN_HOME=/mnt/c/Users/gungu
export CLICOLOR=1
export TERM=xterm-256color

###########
# general
###########

# 自動補完を有効にする
autoload -U compinit
compinit

# vimのキーバインド
bindkey -v

# 左の表示
PROMPT='[%F{green}%d%f]
# '

# 右の表示
#RPROMPT='[%F{green}%d%f]'

# 入力したコマンドが存在せずかつディレクトリ名と一致するならディレクトリに cd する
# 例 /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd

# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# コマンドミスを修正
setopt correct

# tmuxの起動
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

# 名前付きディレクトリ
setopt CDABLE_VARS
hash -d win=${WIN_HOME}

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
#bindkey "^P" history-incremental-search-backward
#bindkey "^N" history-incremental-search-forward

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

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
alias back='pushd'

alias -g @g='| ag'

# cdの後にlsを実行
chpwd() { ls -ll }

# backspace,deleteキーを使えるように
stty erase ^H
bindkey "^[[3~" delete-char

###########
# my command
###########

# mkdir & cd
function mcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }


###########
# git
###########
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
