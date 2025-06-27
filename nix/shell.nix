{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    asciiquarium
    cowsay
    fzf
    jq
    just
    lolcat
    sl
    yq-go
  ];
}
