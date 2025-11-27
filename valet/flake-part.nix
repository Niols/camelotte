{
  perSystem =
    { pkgs, ... }:
    let
      opkgs = pkgs.ocamlPackages;
    in
    {
      packages.valet = opkgs.buildDunePackage {
        pname = "valet";
        version = "dev";
        src = ./..;
        doCheck = true;
        propagatedBuildInputs = [ opkgs.ppxlib ];
      };
    };
}
