{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/boot.nix
      ../../modules/display.nix
      ../../modules/locales.nix

      ../../modules/boot/boot.loader/devices/alpha-device.nix
      ../../modules/boot/kernel.params/alpha-fix.nix
      ../../modules/boot/init/systemd.nix
      ../../modules/boot/efi/efi.nix

      ../../modules/display/desktop.manager/plasma.nix
      ../../modules/display/display.manager/sddm.nix

      ../../modules/keyboard/layouts/qwerty.nix

      ../../modules/locales.nix
      ../../modules/measurement.system/time.nix

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
