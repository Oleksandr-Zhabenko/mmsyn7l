{ pkgs ? import <nixpkgs> {} }:
pkgs.haskellPackages.mkDerivation {
  pname = "mmsyn7l";
  version = "0.9.2.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = with pkgs.haskellPackages; [
    base directory end-of-exe mmsyn2-array mmsyn7ukr-common process
  ];
  executableHaskellDepends = with pkgs.haskellPackages; [
    base directory end-of-exe mmsyn2-array mmsyn7ukr-common process
  ];
  homepage = "https://hackage.haskell.org/package/mmsyn7l";
  description = "Modifies the amplitudes of the sounds representations created by mmsyn7ukr-array and mmsyn7ukr packages";
  license = pkgs.lib.licenses.mit;
  mainProgram = "mmsyn7l";
}
