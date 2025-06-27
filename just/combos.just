# needs no explanation
[group('fun-combos')]
rainbow-train *args:
    sl | lolcat

# demo of toilet fonts
[group('fun-combos')]
toilet-demo *args:
    #!/usr/bin/env bash
    set -euo pipefail

    # TODO: nix would be better for this
    toilet_dir=$(which toilet)
    toilet_root_dir="$(dirname "$(dirname "${toilet_dir}")")/share/figlet"

    for font in "${toilet_root_dir}"/*; do
      font=$(basename "${font}")
      echo "{{ YELLOW }}${font}{{ NORMAL }}"
      toilet --termwidth -F metal -f "${font}" "${font}" $@
    done

# curl wttr.in
[group('fun-combos')]
check-the-weather *args:
    curl wttr.in/{{args}}
