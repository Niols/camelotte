{
  perSystem =
    { pkgs, ... }:
    let
      opkgs = pkgs.ocamlPackages;
    in
    {
      packages.ppx_deriving_madcast = opkgs.buildDunePackage {
        pname = "ppx_deriving_madcast";
        version = "dev";
        src = ./..;
        propagatedBuildInputs = with opkgs; [
          ppxlib
          ppx_deriving
        ];
      };
    };
}
