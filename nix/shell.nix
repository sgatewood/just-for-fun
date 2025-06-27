{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    asciiquarium
    cowsay
    figlet
    fzf
    jq
    just
    lolcat
    sl
    toilet
    yq-go
  ];
}
