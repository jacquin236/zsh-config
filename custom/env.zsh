# env: Ensure common environment variables are set

# Set common variables if they have not already been set.
export EDITOR=${EDITOR:-nvim}
export VISUAL=${VISUAL:-nano}
export PAGER=${PAGER:-less}
export LANG=${LANG:-en_US.UTF-8}

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if [[ -z "$LESSOPEN" ]] && (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi
export LESS="${LESS:--g -i -M -R -S -w -z-4}"
