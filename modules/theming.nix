{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    hellwal
  ];
}