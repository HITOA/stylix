{ buildNpmPackage, lib, ... }:
buildNpmPackage rec {
  npmDepsHash = "sha256-y8JNznO3f/3dgYFaiBMqprkvw3qAd0KXQqQxklCs+zM=";
  pname = "palette-generator";
  version = "1.0.0";

  src = ./src;

  dontFixup = true;
}