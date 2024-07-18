# Export path
export PATH=$HOME/bin:$HOME/.local/bin:usr/local/bin:$PATH

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Starship path
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Setup path of Zsh
export ZSH="${XDG_CONFIG_HOME}/ohmyzsh"
export ZSH_COMPDUMP="${__zsh_cache_dir}/compdump/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
ZSH_CUSTOM="$ZDOTDIR/custom"
COMPLETION_WAITING_DOTS="%F{cyan}waiting...%f"
# ZSH_THEME="random"

plugins=(
  git
  starship
  nvm
  rbenv
  rust
  python
  zsh-autosuggestions
  fast-syntax-highlighting
  zsh-autocomplete
)

zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' lazy-cmd eslint prettier typescript
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' silent-autoload yes

source $ZSH/oh-my-zsh.sh
