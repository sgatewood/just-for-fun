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
    nyancat
    sl
    toilet
    yq-go
  ];
}
