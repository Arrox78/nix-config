{ config, lib, pkgs, ... }:

{

boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelParams = [
    "quiet"
    "splash"
    "i8042.dumbkbd=1"
    "i8042.nopnp=1"
    "xe.enable_psr=0"
    "snd_hda_intel.dmic_detect=0"
  ];

}
