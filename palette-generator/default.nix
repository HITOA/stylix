{ pkgs, lib, palette-generator-src }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = palette-generator-src;

  buildPhase = ''
    g++ main.cpp -o palette-generator
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp palette-generator $out/bin
  '';
}