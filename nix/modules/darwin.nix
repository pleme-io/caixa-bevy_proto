# nix/modules/darwin.nix — auto-generated from bevy_proto.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_proto; in {
  options.services.bevy_proto = {
    enable = lib.mkEnableOption "bevy_proto";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_proto or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
