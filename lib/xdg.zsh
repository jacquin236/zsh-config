#
# Directories for Tools before install them
#
# References:
# https://github.com/mattmc3/zdotdir/blob/main/plugins/xdg/xdg.plugin.zsh
#

export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_RUNTIME_DIR=~/.xdg
export XDG_PROJECTS_DIR=~/projects 

for _xdgdir in XDG_{CONFIG,CACHE,DATA,STATE}_HOME XDG_RUNTIME_DIR; do
  [[ -e ${(P)_xdgdir} ]] || mkdir -p ${(P)_xdgdir}
done
unset _xdgdir

# Utils
#
# less
export LESSKEY="${LESSKEY:-$XDG_CONFIG_HOME/less/lesskey}"
export LESSHISTFILE="${LESSHISTFILE:-$XDG_CACHE_HOME/less/history}"

# readline
export INPUTRC="${INPUTRC:-$XDG_CONFIG_HOME/readline/inputrc}"

# screen
export SCREENRC="${SCREENRC:-$XDG_CONFIG_HOME/screen/screenrc}"

# tmux
export TMUX_CONFIG="${TMUX_CONFIG:-$XDG_CONFIG_HOME/tmux/tmux.conf}"
alias tmux="${aliases[tmux]:-tmux} -f \"\$TMUX_CONFIG\""

# wget
export WGETRC="${WGETRC:-$XDG_CONFIG_HOME/wget/wgetrc}"
alias wget="${aliases[wget]:-wget} --hsts-file=\$XDG_CACHE_HOME/wget/wget-hsts"

# Dev-tools
#
# gpg
export GNUPGHOME="${GNUPGHOME:-$XDG_DATA_HOME/gnupg}"
alias gpg="${aliases[gpg]:-gpg} --homedir \"\$GNUPGHOME\""

# jupyter
export JUPYTER_CONFIG_DIR="${JUPYTER_CONFIG_DIR:-$XDG_CONFIG_HOME/jupyter}"

# nvm
export NVM_DIR="${NVM_DIR:-$XDG_CONFIG_HOME/nvm}"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# node
export NPM_CONFIG_USERCONFIG="${NPM_CONFIG_USERCONFIG:-$XDG_CONFIG_HOME/npm/npmrc}"
export NODE_REPL_HISTORY="${NODE_REPL_HISTORY:-$XDG_DATA_HOME/nodejs/repl_history}"
export npm_config_cache="${npm_config_cache:-$XDG_CACHE_HOME/npm}"

# ruby bundler
export BUNDLE_USER_CONFIG="${BUNDLE_USER_CONFIG:-$XDG_CONFIG_HOME/bundle}"
export BUNDLE_USER_CACHE="${BUNDLE_USER_CACHE:-$XDG_CACHE_HOME/bundle}"
export BUNDLE_USER_PLUGIN="${BUNDLE_USER_PLUGIN:-$XDG_DATA_HOME/bundle}"

# ruby gems
export GEM_HOME="${GEM_HOME:-$XDG_DATA_HOME/gem}"
export GEM_SPEC_CACHE="${GEM_SPEC_CACHE:-$XDG_CACHE_HOME/gem}"

# postgres
export PSQLRC="${PSQLRC:-$XDG_CONFIG_HOME/pg/psqlrc}"
export PSQL_HISTORY="${PSQL_HISTORY:-$XDG_CACHE_HOME/pg/psql_history}"
export PGPASSFILE="${PGPASSFILE:-$XDG_CONFIG_HOME/pg/pgpass}"
export PGSERVICEFILE="${PGSERVICEFILE:-$XDG_CONFIG_HOME/pg/pg_service.conf}"

# rust
export CARGO_HOME="${CARGO_HOME:-$XDG_CACHE_HOME/cargo}"
export RUSTUP_HOME="${RUSTUP_HOME:-$XDG_DATA_HOME/rustup}"
if [ -f "${CARGO_HOME:-XDG_CACHE_HOME/cargo}/env" ]; then
    . "${CARGO_HOME:-XDG_CACHE_HOME/cargo}/env"
fi

# go 
export GOPATH="${GOPATH:-$XDG_CACHE_HOME/go}"

# asdf
export ASDF_DIR="${ASDF_DIR:-$XDG_CONFIG_HOME/asdf}"
export ASDF_COMPLETIONS="$ASDF_DIR/completions"
