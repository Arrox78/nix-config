{ config, lib, pkgs, ... }:


{

networking.hostName = "nixos";
  networking.wireless.enable = true;
  networking.networkmanager.enable = true;

}
