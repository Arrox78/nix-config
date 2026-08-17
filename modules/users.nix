{ config, lib, pkgs, ... }:

{

  users.users."thomas" = {
    isNormalUser = true;
    description = "Thomas";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

}
