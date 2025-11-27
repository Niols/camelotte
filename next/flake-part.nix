{
  perSystem =
    { pkgs, ... }:
    let
      opkgs = pkgs.ocamlPackages;
    in
    {
      packages.next = opkgs.buildDunePackage {
        pname = "next";
        version = "dev";
        src = ./..;
        buildInputs = [ opkgs.ppx_inline_test ];
        doCheck = true;
        checkInputs = [ opkgs.alcotest ];
      };
    };
}
