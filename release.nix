with (import <nixpkgs> {}).pkgs;
let
  haskell = haskellngPackages.override {
    overrides = self: super: {
      diff3 = self.callPackage <diff3> {};
    };
  };
in {
  inherit (haskell) diff3;
}
