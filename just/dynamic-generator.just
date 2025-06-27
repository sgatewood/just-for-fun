[group('zzz-boring-dynamic-justfile')]
get-dynamic-justfile-code:
    #!/usr/bin/env bash
    set -euo pipefail

    pkgs=$(yq -o json "${REPO_ROOT}/flake.lock.pkgs.yaml")
    cmds=$(jq -re 'keys[]' <<< "${pkgs}")
    for cmd in ${cmds}; do

      # omit non-fun cmds
      case "${cmd}" in
        "just"|"fzf"|"yq"|"jq")
          continue
          ;;
      esac

      info=$(jq -re --arg cmd "${cmd}" '.[$cmd]' <<< "${pkgs}")
      description=$(jq -re '.description' <<< "${info}")
      echo "# ${description}"
      echo "[group('fun')]"
      echo "${cmd} *args:"
      echo "    @${cmd} \$@"
      echo
    done

[group('zzz-boring-dynamic-justfile')]
update-dynamic-justfile-code:
    just get-dynamic-justfile-code > "${REPO_ROOT}/just/dynamic-generator-result.just"
