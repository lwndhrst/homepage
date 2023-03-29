{ pkgs ? import <nixpkgs> {}}:

let
  unstable = import (fetchTarball https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz) {};

in pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    openssl

    unstable.nodePackages.tailwindcss
  ];

  # RUST_BACKTRACE = 1;
}
