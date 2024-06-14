{ buildNpmPackage, lib, ... }:
buildNpmPackage rec {
  npmDepsHash = lib.fakeHash;
  pname = "palette-generator";
  version = "1.0.0";

  src = ./src;

  dontFixup = true;
  dontNpmBuild = true;
}