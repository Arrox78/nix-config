{ config, lib, pkgs, ...}:

{


  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  
  services.flatpak.enable = true;

  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services.openssh.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    tree
    alsa-utils
    sof-firmware
    github-cli
  ];

}
