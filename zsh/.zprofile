# Locale 설정 (macOS는 기본 제공, Linux/WSL은 설치 여부 확인)
if locale -a 2>/dev/null | grep -qi 'en_US\.utf-\?8'; then
  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
elif locale -a 2>/dev/null | grep -qi 'C\.utf-\?8'; then
  export LANG=C.UTF-8
  export LC_ALL=C.UTF-8
else
  export LANG=C
  export LC_ALL=C
fi

if [ -x "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
