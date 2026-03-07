{ pkgs, ... }: {
  home.username = "div";
  home.homeDirectory = "/home/div";
  home.stateVersion = "25.11";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Packages to install
  home.packages = with pkgs; [
    bat btop docker docker-compose eza fastfetch fzf
    gcc gdb git gh less man-db man-pages micro mise
    openssh pipx stow gnutar tldr unzip zoxide
  ];
}