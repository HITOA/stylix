{ buildNpmPackage, ... }:
buildNpmPackage rec {
  pname = "palette-generator";
  version = "1.0.0";

  src = ./src;
}