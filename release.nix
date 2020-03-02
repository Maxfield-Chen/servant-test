let
  config = {
    packageOverrides = pkgs: rec {
      haskellPackages = pkgs.haskellPackages.override {
        overrides = haskellPackagesNew: haskellPackagesOld: rec {
          servant-test =
            haskellPackagesNew.callPackage ./servant-test.nix { };
        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; };

in
  { servant-test = pkgs.haskellPackages.servant-test;
  }
