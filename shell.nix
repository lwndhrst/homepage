{ pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz) {}}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    openssl
    nodePackages.tailwindcss
  ];

  # RUST_BACKTRACE = 1;
}
