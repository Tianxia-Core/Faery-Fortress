# ffp: FFP-FAERY-FORTRESS-FLAKE declarative nix
{
  description = "Faery Fortress v8.7.0 — Tier-2 Hardened Perimeter Defense, MANAS C/AVX2 SIMD Safety Gate & OCaml Wayland Capability Proxy";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    tianxia-core = {
      url = "github:Tianxia-Core/TianxiaOS";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, tianxia-core, ... }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in {
      packages = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          manasDaemon = pkgs.writeShellScriptBin "tx-manas-daemon" ''
            exec ${pkgs.python3}/bin/python3 ${./src/daemon/tx_manas.py} "$@"
          '';
        in {
          default = manasDaemon;
          tx-manas-daemon = manasDaemon;
        } // nixpkgs.lib.optionalAttrs (system == "x86_64-linux") {
          libtx-manas-cpu = pkgs.stdenv.mkDerivation {
            pname = "libtx-manas-cpu";
            version = "8.7.0";
            src = ./src/manas;
            buildPhase = ''
              cc -O3 -mavx2 -mfma -shared -fPIC tx_manas_cpu.c -o libtx_manas_cpu.so -lm
            '';
            installPhase = ''
              mkdir -p $out/lib
              install -m 0755 libtx_manas_cpu.so $out/lib/libtx_manas_cpu.so
            '';
          };
        }
      );

      nixosModules = {
        default = ./nix/tianxia-defense-matrix.nix;
        defense-matrix = ./nix/tianxia-defense-matrix.nix;
        edge-defense = ./nix/tianxia-edge-defense.nix;
        secenhan = ./nix/tianxia-secenhan.nix;
        hardening = ./nix/tx-hardening-svc.nix;
      };
    };
}
