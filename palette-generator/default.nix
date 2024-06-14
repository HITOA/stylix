{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = ./src;

  buildPhase = ''
    g++ main.cpp -o palette-generator
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp $src/palette-generator $out/bin
  '';
}