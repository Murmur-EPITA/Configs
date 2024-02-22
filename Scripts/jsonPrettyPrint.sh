#/bin/bash

# Usage: echo '....' | jsonPrettyPrint.sh

grep -Eo '"[^"]*" *(: *([0-9]*|"[^"]*")[^{}\["]*|,)?|[^"\]\[\}\{]*|\{|\},?|\[|\],?|[0-9 ]*,?' | awk '{if ($0 ~ /^[}\]]/ ) offset-=4; printf "%*c%s\n", offset, " ", $0; if ($0 ~ /^[{\[]/) offset+=4}' | pygmentize -l json | bat

