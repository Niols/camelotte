{
  perSystem =
    {
      self',
      pkgs,
      utils,
      ...
    }:
    let
      opkgs = pkgs.ocamlPackages;
    in
    {
      packages.monadise = opkgs.buildDunePackage {
        pname = "monadise";
        version = "dev";
        src = utils.thisSubdirAsDuneSource ./.;
        doCheck = true;
        checkInputs = with opkgs; [ alcotest ];
      };

      packages.monadise-lwt = opkgs.buildDunePackage {
        pname = "monadise-lwt";
        version = "dev";
        src = utils.thisSubdirAsDuneSource ./.;
        buildInputs = [ self'.packages.monadise ] ++ (with opkgs; [ lwt ]);
      };
    };
}
