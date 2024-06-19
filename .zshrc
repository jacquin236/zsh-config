# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Load all files in lib
for _zrc in $ZDOTDIR/lib/*.zsh; do
  source $_zrc;
done
unset _zrc

# Path to your Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"
export ZSH_COMPDUMP="${__zsh_cache_dir}/compdump/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

ZSH_THEME="random"
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
ZSH_CUSTOM="$ZDOTDIR/zsh-custom"

plugins=(git)

source $ZSH/oh-my-zsh.sh

