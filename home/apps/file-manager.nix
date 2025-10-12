# Thunar is a file explorer
{
  pkgs,
  config,
  ...
}:

{
  # bookmarks for the side pane
  gtk.gtk3.bookmarks = [
    "${config.home.homeDirectory}/Downloads Downloads"
    "${config.home.homeDirectory}/Pictures Pictures"
    "${config.home.homeDirectory}/Documents Documents"
    "${config.home.homeDirectory}/confix NixOS"
    "${config.home.homeDirectory}/dev Development"
  ];
}