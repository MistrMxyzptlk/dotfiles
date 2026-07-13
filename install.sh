#!/usr/bin/env bash
# Symlinks this repo's files into place. Safe to re-run.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
link() {
  local src="$DOTFILES/$1" dest="$HOME/$1"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    mv "$dest" "$dest.bak.$(date +%s)"
    echo "backed up existing $dest"
  fi
  ln -sfn "$src" "$dest"
  echo "linked $dest -> $src"
}

link .zshrc
link .p10k.zsh
link .dircolors-frappe
link .config/kitty

if [ "$(command -v zsh)" ] && [ "$SHELL" != "$(command -v zsh)" ]; then
  echo "Tip: run 'chsh -s \$(command -v zsh)' to make zsh your login shell."
fi

echo
echo "Done. See packages.md for the apt packages this setup expects."
