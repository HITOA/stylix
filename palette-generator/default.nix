{ buildNpmPackage, ... }:
buildNpmPackage rec {
  npmDepsHash = "sha256-0nwIuZ80SINay/+VRx3coqy/lpiGgfwX00ly+TivXQM=";
  pname = "palette-generator";
  version = "1.0.0";

  forceEmptyCache = true;

  src = ./src;

  dontFixup = true;
}