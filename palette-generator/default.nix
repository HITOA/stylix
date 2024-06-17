{ pkgs, lib }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = pkgs.fetchgit {
    url = "https://github.com/HITOA/image2palette.git";
    rev = "0ed6de13ee07e4c6b14645892a1b25868f4ad82f";
    sha256 = "sha256-nQmPm/h/hXACEdfVyhIt67pyTgd4xwP2mT3hp7DuG14=";
  };

  buildPhase = ''
    g++ main.cpp -o palette-generator
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp palette-generator $out/bin
  '';
}