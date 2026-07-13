# CLI packages

This machine is Arch Linux; the target is Ubuntu, so package names don't
carry over 1:1. Below is the curated set of shell/CLI/terminal packages this
setup actually depends on, translated to their Ubuntu `apt` names.

Left out on purpose: kernel, bootloader, GPU driver, display manager, window
manager, and audio-stack packages (`linux*`, `grub`, `nvidia-*`, `lightdm`,
`ly`, `i3*`, `pipewire*`, `bluez*`, etc.) — Ubuntu's installer already sets
equivalents for these, and copying Arch-specific package names for them
would do more harm than good. AUR helpers (`yay`, `paru`) also don't apply
on Ubuntu.

```sh
sudo apt update
sudo apt install -y \
  zsh git kitty vim nano htop tree wget less stow \
  openssh-client fonts-firacode \
  fzf zoxide \
  smartmontools protobuf-compiler brightnessctl
```

Notes:
- `zinit` (the zsh plugin manager used in `.zshrc`) is not packaged — it
  self-installs on first shell start via `git clone`, so nothing to do here.
- Brave browser isn't included here (not part of the "shell/CLI" scope of
  this repo) — install separately if wanted.
