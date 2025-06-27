[group('zzz-boring-dynamic-justfile')]
get-dynamic-justfile-code:
    #!/usr/bin/env bash
    set -euo pipefail

    pkgs=$(yq -o json "${REPO_ROOT}/flake.lock.pkgs.yaml")
    cmds=$(jq -re 'keys[]' <<< "${pkgs}")
    for cmd in ${cmds}; do
      actual_pkg_name="${cmd}"

      # omit non-fun cmds
      case "${cmd}" in
        just|fzf|yq|jq|docker|curl)
          continue
          ;;
        ponysay*)
          # TODO: find a better solution for this
          cmd=ponysay
          ;;
      esac

      info=$(jq -re --arg pkg "${actual_pkg_name}" '.[$pkg]' <<< "${pkgs}")
      description=$(jq -re '.description' <<< "${info}")
      echo "# ${description}"
      echo "[group('fun')]"
      echo "${cmd//./_} *args:"
      echo "    @${cmd} \$@"
      echo
    done

[group('zzz-boring-dynamic-justfile')]
update-dynamic-justfile-code:
    just get-dynamic-justfile-code > "${REPO_ROOT}/just/dynamic-generator-result.just"
