{
  perSystem =
    { pkgs, utils, ... }:
    let
      opkgs = pkgs.ocamlPackages;
    in
    {
      packages.valet = opkgs.buildDunePackage {
        pname = "valet";
        version = "dev";
        src = utils.thisSubdirAsDuneSource ./.;
        doCheck = true;
        propagatedBuildInputs = [ opkgs.ppxlib ];
      };
    };
}
