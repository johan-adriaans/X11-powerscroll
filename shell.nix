{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs.buildPackages; [ gnumake gcc xorg.libX11 xorg.libXtst xorg.libXi.dev ];
}
