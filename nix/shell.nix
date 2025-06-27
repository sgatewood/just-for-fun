{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    asciiquarium
    cowsay
    cmatrix
    curl
    docker
    figlet
    fzf
    jq
    just
    lolcat
    pipes
    ponysay
    moon-buggy
    ninvaders
    nyancat
    sl
    toilet
    yq-go
  ];
}
