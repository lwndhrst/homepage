{ pkgs ? import <nixpkgs> {}}:

in pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    openssl
    nodePackages.tailwindcss
  ];

  # RUST_BACKTRACE = 1;
}
