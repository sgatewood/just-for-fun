{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    asciiquarium
    cowsay
    cmatrix
    docker
    figlet
    fzf
    jq
    just
    lolcat
    pipes
    ninvaders
    nyancat
    sl
    toilet
    yq-go
  ];
}
