{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/boot.nix
      ../../modules/display.nix
      ../../modules/locales.nix
      ../../modules/network.nix
      ../../modules/packages.nix
      ../../modules/sound.nix
      ../../modules/support.nix
      ../../modules/users.nix

      inputs.home-manager.nixosModules.default
    ];

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };
  
  virtualisation.docker.enable = true;

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "thomas" = import ./home.nix;
    };
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "26.05";

}
