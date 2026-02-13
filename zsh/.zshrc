export PATH="/opt/homebrew/opt/node@24/bin:$PATH"

export LANG=en_US.UTF-8
export LC_TIME=en_US.UTF-8

# ZSH CONFIGS

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# # iTerm 열면 tmux 자동 실행
# if [[ -z "$TMUX" ]]; then
#   tmux new
# fi
