#!/bin/bash
set -e

install_debian() {
    PACKAGES="bat btop curl extrepo eza gh micro openssh-server pipx ripgrep stow tmux tree tar unzip wget zoxide"
    sudo apt update && sudo apt install -y $PACKAGES
}

install_fedora() {
    PACKAGES="bat btop curl eza gh micro openssh-server pipx ripgrep stow tmux tree tar unzip wget zoxide"
    sudo dnf install -y $PACKAGES
    # eza via copr if not available
    if ! command -v eza &>/dev/null; then
        sudo dnf copr enable -y atim/eza
        sudo dnf install -y eza
    fi
}

install_arch() {
    PACKAGES="bat btop curl eza github-cli micro openssh python-pipx ripgrep stow tmux tree tar unzip wget zoxide"
    sudo pacman -Sy --noconfirm $PACKAGES
}

install_extras() {
    # Docker
    if ! command -v docker &>/dev/null; then
        curl -fsSL https://get.docker.com | sh
        sudo usermod -aG docker $USER
    fi
 
    # Ollama
    if ! command -v ollama &>/dev/null; then
        curl -fsSL https://ollama.com/install.sh | sh
    fi
 
    # mise
    if ! command -v mise &>/dev/null; then
        curl https://mise.run | sh
    fi
 
    # nerdfetch
    if ! command -v nerdfetch &>/dev/null; then
        sudo curl -fsSL https://raw.githubusercontent.com/ThatOneCalculator/NerdFetch/main/nerdfetch -o /usr/bin/nerdfetch
        sudo chmod +x /usr/bin/nerdfetch
    fi
}

if [ -f /etc/os-release ]; then
    . /etc/os-release
    case "$ID" in
        debian|ubuntu|linuxmint) install_debian ;;
        fedora)                  install_fedora ;;
        arch|manjaro|endeavouros) install_arch ;;
        *) echo "Unsupported distro: $ID"; exit 1 ;;
    esac
else
    echo "Cannot detect distro"; exit 1
fi

install_extras

echo "Bootstrap done!"