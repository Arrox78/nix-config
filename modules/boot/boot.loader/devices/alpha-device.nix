{ config, lib, pkgs, ... }:

{

  boot.loader.grub.devices = [
    "/boot/efi"
  ];

}
