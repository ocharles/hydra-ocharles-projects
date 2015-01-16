with (import <nixpkgs> {}).pkgs;
let
  haskell = haskellngPackages.override {
    overrides = self: super: {
      diff3 = self.callPackage <diff3> {};
      digestive-functors-aeson = self.callPackage <digestive-functors-aeson> {};
    };
  };
in {
  inherit (haskell) diff3 digestive-functors-aeson;
}
