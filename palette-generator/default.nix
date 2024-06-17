{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "palette-generator";
  src = builtins.fetchGit {
    url = "https://github.com/HITOA/image2palette.git";
    ref = "main";
  };

  buildPhase = ''
    g++ main.cpp -o palette-generator
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp palette-generator $out/bin
  '';
}