cd ~

export XDG_CONFIG_HOME=$HOME/.config
export WIN_HOME=/mnt/c/Users/GUN

 #自動補完を有効にする
# コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# 例 `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit
compinit

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

# 入力したコマンドが存在せずかつディレクトリ名と一致するならディレクトリに cd する
# 例 /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd

alias ll='ls -la'

[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

bindkey -v

# 左の表示
PROMPT='[%F{green}%d%f]# '

# 右の表示
#RPROMPT='[%F{green}%d%f]'

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

alias rm='rm -i'
alias vi=nvim
alias mkdir='mkdir -p'

alias -g @g='| grep'
alias wincd='cd $WIN_HOME'

# sudono
alias sudo='sudo '

function mcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
