#!/bin/bash
set -e

DOTFILES="$HOME/dotfiles"
OS="$(uname -s)"

link() {
  local src="$1"
  local dest="$2"
  local dest_dir
  dest_dir=$(dirname "$dest")

  mkdir -p "$dest_dir"

  if [ -L "$dest" ]; then
    rm "$dest"
  elif [ -e "$dest" ]; then
    echo "Backing up $dest -> ${dest}.bak"
    mv "$dest" "${dest}.bak"
  fi

  ln -s "$src" "$dest"
  echo "Linked $dest -> $src"
}

# nvim (directory symlink)
link "$DOTFILES/nvim" "$HOME/.config/nvim"

# tmux
link "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

# zsh
link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
link "$DOTFILES/zsh/.zprofile" "$HOME/.zprofile"

# git
link "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"

# gh
link "$DOTFILES/gh/config.yml" "$HOME/.config/gh/config.yml"

# claude
link "$DOTFILES/claude/settings.json" "$HOME/.claude/settings.json"

# vscode (only if files exist in dotfiles)
if [ "$OS" = "Darwin" ]; then
  VSCODE_DIR="$HOME/Library/Application Support/Code/User"
else
  VSCODE_DIR="$HOME/.config/Code/User"
fi
if [ -f "$DOTFILES/vscode/settings.json" ]; then
  link "$DOTFILES/vscode/settings.json" "$VSCODE_DIR/settings.json"
fi
if [ -f "$DOTFILES/vscode/keybindings.json" ]; then
  link "$DOTFILES/vscode/keybindings.json" "$VSCODE_DIR/keybindings.json"
fi

# iterm2 (macOS only — use iTerm2's custom folder feature instead of symlink)
if [ "$OS" = "Darwin" ] && [ -d "$DOTFILES/iterm2" ]; then
  defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$DOTFILES/iterm2"
  defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
  echo "iTerm2 configured to load prefs from $DOTFILES/iterm2"
fi

echo ""
echo "All dotfiles linked!"
