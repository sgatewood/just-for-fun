{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    asciiquarium
    cowsay
    fzf
    just
    lolcat
    sl
  ];
}
