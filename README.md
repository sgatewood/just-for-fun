# 🎪 `just` for fun 🎪

A (WIP) repo compiling some fun things under a [`justfile`](https://just.systems/man/en/) interface

All batteries [included](nix/shell.nix) (well, except for `direnv` and `nix`...)

![demo](assets/demo.gif)

```
just -l
Available recipes:
    help

    [fun]
    asciiquarium *args           # Enjoy the mysteries of the sea from the safety of your own terminal!
    cacafire *args               # warm fire
    cacaview *args               # view an image in ascii
    cmatrix *args                # Simulates the falling characters theme from The Matrix movie
    cowsay *args                 # Program which generates ASCII pictures of a cow with a message
    figlet *args                 # Program for making large letters out of ordinary text
    game-2048 *args              # Animated console version of the 2048 game
    lolcat *args                 # Rainbow version of cat
    moon-buggy *args             # Simple character graphics game where you drive some kind of car across the moon's surface
    ninvaders *args              # Space Invaders clone based on ncurses
    nyancat *args                # Nyancat in your terminal, rendered through ANSI escape sequences
    pipes_sh *args               # Animated pipes terminal screensaver
    ponysay *args                # Cowsay reimplemention for ponies
    sl *args                     # Steam Locomotive runs across your terminal when you type 'sl'
    toilet *args                 # Display large colourful characters in text mode

    [fun-combos]
    check-the-weather *args      # curl wttr.in
    rainbow-train *args          # needs no explanation
    toilet-demo *args            # demo of toilet fonts

    [utils]
    inspect *tools               # get info about a tool
    try pkg                      # try any nix package in docker

    [zzz-boring-dynamic-justfile]
    get-dynamic-justfile-code
    update-dynamic-justfile-code

    [zzz-boring-nix]
    nix-check
    nix-check-update
```
