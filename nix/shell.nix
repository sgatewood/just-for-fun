{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    asciiquarium
    cowsay
    cmatrix
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
