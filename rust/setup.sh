#!/bin/bash
set -o errexit -o nounset

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup default stable
rustup install nightly
rustup update

cargo install --git https://github.com/XAMPPRocky/tokei.git tokei
cargo install exa
cargo install dua-cli
cargo install --git https://github.com/xen0n/autojump-rs.git autojump
curl -o "$HOME/autojump.zsh" https://raw.githubusercontent.com/wting/autojump/master/bin/autojump.zsh
echo ". \"$HOME/autojump.zsh\"" >> "$HOME/.zshrc"
cargo install bandwhich

