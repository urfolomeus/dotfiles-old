#!/bin/zsh
#
# Highlight a given file and copy it as RTF.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

# 1. Run pygmentize
# 2. Set the fontsize to 30 Points (=60 half-points)
# 3. Remove all newlines
# 4. Remove trailing paragraph, to prevent a line break
# 5. Copy the result to the clipboard
pygmentize -f rtf -O 'fontface=Monaco,style=solarized-light' $1 | sed 's;\\f0;\\f0\\fs48;g' | tr -d '\n' | sed 's;\\par}$;};' | pbcopy
