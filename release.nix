with (import <nixpkgs> {}).pkgs;
let
  haskell = haskellngPackages.override {
    overrides = self: super: {
      diff3 = self.callPackage <diff3> {};
      digestive-functors-aeson = self.callPackage <digestive-functors-aeson> {};
      ekg-bosun = self.callPackage <ekg-bosun> {};
    };
  };
in {
  inherit (haskell) diff3 digestive-functors-aeson ekg-bosun;
}
