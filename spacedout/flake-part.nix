{
  perSystem =
    { pkgs, utils, ... }:
    let
      opkgs = pkgs.ocamlPackages;
    in
    {
      packages.spacedout = opkgs.buildDunePackage {
        pname = "spacedout";
        version = "dev";
        src = utils.thisSubdirAsDuneSource ./.;
        buildInputs = [ opkgs.ppx_inline_test ];
      };
    };
}
