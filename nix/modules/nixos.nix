# nix/modules/nixos.nix — auto-generated from bevy_proto.caixa.lisp
# description: "Create config files for entities in Bevy"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_proto;
in {
  options.services.bevy_proto = {
    enable = lib.mkEnableOption "bevy_proto";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_proto or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
