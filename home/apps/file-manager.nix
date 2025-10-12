# Thunar is a file explorer
{
  pkgs,
  config,
  ...
}:

{
  # bookmarks for the side pane
  gtk.gtk3.bookmarks = [
    "file:///home/${user}/Downloads Downloads"
    "file:///home/${user}/Pictures Pictures"
    "file:///home/${user}/Documents Documents"
    "file:///home/${user}/confix NixOS"
    "file:///home/${user}/dev Development"
  ];
}