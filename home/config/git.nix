{ config, pkgs, ... }:

{
  # Git enable
  programs.git = {
   enable = true;
   settings = {
    user.name = "Muhammad Rashid K";
    user.email = "mrashieee@gmail.com";
    init.defaultBranch = "main";
    safe.directory = "/home/rashocean/confix";
   };
  };
}
