{ config, lib, pkgs, ... }:

{

  services = {
    printing.enable = true;
    libinput.enable = true;
  };

}
