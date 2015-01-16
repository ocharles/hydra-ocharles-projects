with (import <nixpkgs> {}).pkgs;
let
  haskell = haskellngPackages.override {
    overrides = self: super: {
      diff3 = self.callPackage <diff3> {};
      digestive-functors-aeson = self.callPackage <digestive-functors-aeson> {};
      ekg-bosun = self.callPackage <ekg-bosun> {};
      ekg-carbon = self.callPackage <ekg-carbon> {};
      engine-io = self.callPackage <engine-io/engine-io> {};
      engine-io-snap = self.callPackage <engine-io/engine-io-snap> {};
      exhaustive = self.callPackage <exhaustive> {};
      socket-io = self.callPackage <engine-io/socket-io> {};
    };
  };
in {
  inherit (haskell)
    diff3
    digestive-functors-aeson
    ekg-bosun
    ekg-carbon
    engine-io
    engine-io-snap
    exhaustive
    socket-io
    ;
}
