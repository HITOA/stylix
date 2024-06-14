{ buildNpmPackage, ... }:
buildNpmPackage rec {
  pname = "palette-generator";
  version = "0.0.1";

  src = ./src;
}