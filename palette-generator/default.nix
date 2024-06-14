{ buildNpmPackage, ... }:
buildNpmPackage rec {
  pname = "palette-generator";

  src = ./src;
}