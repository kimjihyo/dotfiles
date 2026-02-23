# dotfiles

Personal macOS dotfiles managed with symlinks.

## Overview

| Tool | Description |
|------|-------------|
| **Neovim** | Lua-based config with lazy.nvim, LSP, Telescope, Neo-tree |
| **tmux** | Session management with TPM plugins and Flexoki Dark theme |
| **Zsh** | oh-my-zsh with robbyrussell theme |
| **Git** | Global config with osxkeychain credential helper |
| **iTerm2** | Preferences with Flexoki Dark and TokyoNight color schemes |
| **VS Code** | Settings and keybindings |
| **gh** | GitHub CLI config |
| **Claude Code** | Claude Code settings |

## Requirements

- macOS
- [Homebrew](https://brew.sh)
- [Neovim](https://neovim.io) >= 0.9
- [tmux](https://github.com/tmux/tmux) + [TPM](https://github.com/tmux-plugins/tpm)
- [oh-my-zsh](https://ohmyz.sh)
- [iTerm2](https://iterm2.com)

## Installation

Clone the repository and run the install script:

```bash
git clone https://github.com/kimjihyo/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install.sh
```

The script creates symlinks from `~/dotfiles` to the expected config locations. Existing files are backed up with a `.bak` suffix before being replaced.

### Symlink map

| Source | Destination |
|--------|-------------|
| `nvim/` | `~/.config/nvim` |
| `tmux/.tmux.conf` | `~/.tmux.conf` |
| `zsh/.zshrc` | `~/.zshrc` |
| `zsh/.zprofile` | `~/.zprofile` |
| `git/.gitconfig` | `~/.gitconfig` |
| `gh/config.yml` | `~/.config/gh/config.yml` |
| `claude/settings.json` | `~/.claude/settings.json` |
| `vscode/settings.json` | `~/Library/Application Support/Code/User/settings.json` |
| `vscode/keybindings.json` | `~/Library/Application Support/Code/User/keybindings.json` |
| `iterm2/` | loaded via iTerm2 custom prefs folder |

## Post-install

**Neovim** — plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) and install automatically on first launch.

**tmux** — install plugins by pressing `prefix + I` (capital i) inside a tmux session.

## Theme

[Flexoki Dark](https://stephango.com/flexoki) by Steph Ango is used across Neovim, tmux, and iTerm2.
