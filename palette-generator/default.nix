{ buildNpmPackage, lib, ... }:
buildNpmPackage rec {
  npmDepsHash = "sha256-dVv/s9vPOjCLCsS5Q73PDKN4pvSSFgJCxrub2uiKaSA=";
  pname = "palette-generator";
  version = "1.0.0";

  src = ./src;

  dontFixup = true;
  dontNpmBuild = true;
}