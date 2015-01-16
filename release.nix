with (import <nixpkgs> {}).pkgs;
let
  # The idea here is that every project gets built against the stock `nixpkgs`
  # tree. I think this is better than having a single override, as it much
  # more accurately reflects what a typical `cabal install` will look like.
  project = attr: path: args: {
    ${attr} = (haskellngPackages.override {
      overrides = self: super: {
        ${attr} = self.callPackage path args;
      };
    }).${attr};
  };
in project "diff3" <diff3> {}
// project "digestive-functors-aeson" <digestive-functors-aeson> {}
// project "ekg-bosun" <ekg-bosun> {}
// project "ekg-carbon" <ekg-carbon> {}
// project "engine-io" <engine-io/engine-io> {}
// project "engine-io-snap" <engine-io/engine-io-snap> {}
// project "exhaustive" <exhaustive> {}
// project "json-assertions" <json-assertions> {}
// project "libsystemd-journal" <libsystemd-journal> {}
// project "network-carbon" <network-carbon> {}
// project "pipes-postgresql-simple" <pipes-postgresql-simple> {}
// project "socket-io" <engine-io/socket-io> {}
