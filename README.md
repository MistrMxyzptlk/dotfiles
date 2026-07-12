# dotfiles

Shell and CLI setup: zsh (zinit + powerlevel10k), kitty, i3, dircolors theme.

Source machine is Arch Linux; this is meant to be restored onto Ubuntu, so
see `packages.md` for the apt equivalents before running `install.sh`.

## Setup on a new machine

```sh
git clone <this-repo-url> ~/dotfiles
cd ~/dotfiles
cat packages.md   # install the listed apt packages first
./install.sh
chsh -s "$(command -v zsh)"   # if not already your login shell
```

`install.sh` symlinks each file into `$HOME`, backing up anything already
there (`*.bak.<timestamp>`). Safe to re-run.

## What's tracked here

- `.zshrc`, `.p10k.zsh`, `.dircolors-frappe` — zsh + prompt + `ls` colors
- `.config/kitty/` — terminal emulator config
- `.config/i3/` — window manager config

`~/.config` is symlinked whole to `dotfiles/.config` on the source machine,
so `.gitignore` explicitly denies everything by default and only allows the
paths above — this keeps browser profiles, IDE caches, and other large or
sensitive app state (which physically live under `~/dotfiles/.config` on
this machine but are never tracked) out of the repo.

Shell history (`.zsh_history`) is intentionally not tracked.
