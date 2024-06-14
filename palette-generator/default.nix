{ buildNpmPackage, ... }:
buildNpmPackage rec {
  pname = "palette-generator";
  version = "1.0.0";

  forceEmptyCache = true;

  src = ./src;

  dontFixup = true;
}