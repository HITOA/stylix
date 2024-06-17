{ pkgs, lib }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = fetchgit {
    url = "https://github.com/HITOA/image2palette.git";
    rev = "0ed6de13ee07e4c6b14645892a1b25868f4ad82f";
    sha256 = lib.fakeSha256;
  };

  buildPhase = ''
    g++ main.cpp -o palette-generator
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp palette-generator $out/bin
  '';
}