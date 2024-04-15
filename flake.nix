{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = pkgs.mkShell {
            nativeBuildInputs =
            let
              packageOverrides = pkgs.callPackage ./python-packages.nix {};
              python = pkgs.python3.override { inherit packageOverrides; };
              pythonWithPackages = python.withPackages(ps: [ ps.vunit-hdl ]);
            in
            with pkgs; [
              ghdl
              pythonWithPackages
            ];
          };

          checks = {
            vunitTest = pkgs.stdenv.mkDerivation {
              name = "vunitTest";
              src = ./.;

              dontBuild = true;

              doCheck = true;

              nativeCheckInputs = [ self.devShells.${system}.default.nativeBuildInputs ];

              checkPhase = ''
                cd test_ci
                python3 ./run.py
              '';

              installPhase = "mkdir $out";
            };
          };
        }
      );
}
