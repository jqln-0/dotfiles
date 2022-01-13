#
# Contains extra environment settings needed before zshrc. Most options should
# probably go into zshrc.
#

# Debian by default runs compinit for you in /etc/zsh/zshrc. Prezto will do this
# for me, so skip the default one to save a little time.
skip_global_compinit=1

# Set up cargo if it's installed.
CARGO_DIR="$HOME/.cargo"
if [[ -s "$CARGO_DIR/env" ]]; then
  source "$CARGO_DIR/env"
fi
