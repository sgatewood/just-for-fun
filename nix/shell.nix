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
    moon-buggy
    ninvaders
    nyancat
    sl
    toilet
    yq-go
  ];
}
