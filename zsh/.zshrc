if [ -d "/opt/homebrew/opt/node@24/bin" ]; then
  export PATH="/opt/homebrew/opt/node@24/bin:$PATH"
fi

export LANG=en_US.UTF-8
export LC_TIME=en_US.UTF-8

# ZSH CONFIGS

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

# 존재하지 않는 completion 디렉토리 제거 (WSL에서 docker 미설치 시 compinit 경고 방지)
fpath=(${fpath:#*/usr/share/zsh/vendor-completions})

source $ZSH/oh-my-zsh.sh

# # iTerm 열면 tmux 자동 실행
# if [[ -z "$TMUX" ]]; then
#   tmux new
# fi
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
