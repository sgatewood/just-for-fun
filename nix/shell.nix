{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    _2048-in-terminal
    asciiquarium
    cowsay
    cmatrix
    curl
    docker
    figlet
    fzf
    jq
    just
    libcaca
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
