{ pkgs, lib }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = pkgs.fetchgit {
    url = "https://github.com/HITOA/image2palette.git";
    rev = "8380724bbaf61c00d04109b1405f7108b1c82f6f";
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