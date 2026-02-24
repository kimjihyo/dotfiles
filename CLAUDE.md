# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Personal macOS dotfiles repo. Config files are stored here and symlinked to their expected locations via `install.sh`. There are no build steps, tests, or linting.

## Key Commands

- **Install/re-link all dotfiles**: `bash install.sh`
- **Reload tmux config**: `prefix + r` (or `tmux source-file ~/.tmux.conf`)
- **Install tmux plugins**: `prefix + I` inside tmux (uses TPM)
- **Install nvim plugins**: automatic on first launch via lazy.nvim

## Repository Structure

Each top-level directory corresponds to a tool, containing its config files:

- `nvim/` — Full Neovim config (Lua). Entry point is `init.lua`, which loads modules from `lua/config/` (options, keymappings, autocmds, lazy.nvim bootstrap) and `lua/plugins/` (individual plugin specs).
- `tmux/` — `.tmux.conf` + Flexoki Dark theme file. Prefix is `C-a`, vi mode keys.
- `zsh/` — `.zshrc` and `.zprofile`. Uses oh-my-zsh with robbyrussell theme.
- `git/` — Global `.gitconfig`
- `gh/` — GitHub CLI config (`hosts.yml` is gitignored as it contains credentials)
- `claude/` — Claude Code `settings.json` and custom status line script
- `vscode/` — VS Code settings and keybindings
- `iterm2/` — iTerm2 preferences (loaded via custom prefs folder, not symlink)

## Install Script Behavior

`install.sh` creates symlinks from this repo to standard config paths (e.g., `nvim/` → `~/.config/nvim`). Existing files at destination paths are backed up with `.bak` suffix. See `README.md` for the full symlink map.

## Conventions

- Theme: Flexoki Dark is used across Neovim, tmux, and iTerm2
- Language: respond in Korean (한국어)
- Commits: write in Korean with conventional prefixes (`feat:`, `fix:`, `chore:`, `refactor:`, `docs:`). Include context on why the change was made and expected outcomes.
- Package manager preference: pnpm
- Communication style: concise, no emojis
