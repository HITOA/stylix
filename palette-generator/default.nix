{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = builtins.fetchGit {
    url = "https://github.com/HITOA/image2palette.git";
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