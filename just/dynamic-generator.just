[group('zzz-boring-dynamic-justfile')]
get-dynamic-justfile-code:
    #!/usr/bin/env bash
    set -euo pipefail

    pkgs=$(yq -o json "${REPO_ROOT}/flake.lock.pkgs.yaml")
    cmds=$(jq -re 'keys[]' <<< "${pkgs}")
    for cmd in ${cmds}; do
      pkg_name="${cmd}"
      just_recipe_name="${cmd}"

      # omit non-fun cmds
      case "${cmd}" in
        just|fzf|yq|jq|docker|curl)
          continue
          ;;
        ponysay*)
          # TODO: find a better solution for this
          cmd='ponysay'
          just_recipe_name='ponysay'
          ;;
        2048-in-terminal)
          just_recipe_name="game-2048"
      esac

      info=$(jq -re --arg pkg "${pkg_name}" '.[$pkg]' <<< "${pkgs}")
      description=$(jq -re '.description' <<< "${info}")
      echo "# ${description}"
      echo "[group('fun')]"
      echo "${just_recipe_name//./_} *args:"
      echo "    @${cmd} \$@"
      echo
    done

[group('zzz-boring-dynamic-justfile')]
update-dynamic-justfile-code:
    just get-dynamic-justfile-code > "${REPO_ROOT}/just/dynamic-generator-result.just"
