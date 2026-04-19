{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # AI & LLM tools
    ollama
    opencode
  ];
}
