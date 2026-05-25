# nix/modules/home-manager.nix — auto-generated from bevy_proto.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_proto; in {
  options.programs.bevy_proto = {
    enable = lib.mkEnableOption "bevy_proto";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_proto or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
