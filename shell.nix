{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs; [
      ghc
      cabal-install
      zlib
      clang_7
      llvm_7
      z3
      wllvm
      file
      automake
      autoconf
    ];
}
