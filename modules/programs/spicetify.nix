
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in {
  
  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicetifyPkgs.extensions; [
      adblockify
    ];

    theme = spicetifyPkgs.themes.hazy;

    enabledCustomApps = with spicetifyPkgs.customApps; [
      marketplace
    ];
  };
}
