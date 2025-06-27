[group('zzz-boring-nix')]
nix-check:
    nix flake check

[group('zzz-boring-nix')]
nix-check-update:
    nix fmt
    nix run .#pkgVersionSnapshotTestUpdate

    # it'd be cool to make this a check/app too
    just update-dynamic-justfile-code

[group('zzz-boring-nix')]
nix-flake-update:
    nix flake update --commit-lock-file
    just nix-check-update
