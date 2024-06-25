# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Path to Zsh Installation
export ZSH="$ZDOTDIR/ohmyzsh/ohmyzsh"
export ZSH_COMPDUMP="${__zsh_cache_dir}/compdump/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

ZSH_THEME="random" # set by `omz`
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
<<<<<<< HEAD
ZSH_CUSTOM="$ZDOTDIR/custom"
=======
COMPLETION_WAITING_DOTS="false"
>>>>>>> e2575fb (add asdf tool to PATH)

for _zrc in $ZDOTDIR/lib/*.zsh; do
	source $_zrc
done
unset _zrc

<<<<<<< HEAD
plugins=(
  git
  fast-syntax-highlighting
  zsh-autosuggestions
  zsh-autocomplete
)
=======
plugins=(git asdf zsh-autosuggestions fast-syntax-highlighting zsh-autocomplete)
>>>>>>> e2575fb (add asdf tool to PATH)

source $ZSH/oh-my-zsh.sh
