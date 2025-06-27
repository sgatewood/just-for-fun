# get info about a tool
[group('utils')]
inspect *tools:
    #!/usr/bin/env bash
    set -euo pipefail

    pkgs=$(yq -o json "${REPO_ROOT}/flake.lock.pkgs.yaml")
    cmds=$(jq -re 'keys[]' <<< "${pkgs}")

    tools=($(xargs <<< $@))
    if [ ${#tools[@]} -eq 0 ]; then
      tools=($(fzf --multi --header="Select tool(s) using <Tab>, Enter to confirm" <<< "${cmds}"))
    fi

    for cmd in ${tools[@]}; do
      info=$(jq -re --arg cmd "${cmd}" '.[$cmd]' <<< "${pkgs}")
      yq -P <<< "${info}"
    done

# try any nix package in docker
[group('utils')]
try pkg:
    docker run -it --rm "nixery.dev/shell/${pkg}"
