# Setup fzf
# ---------
if [[ ! "$PATH" =~ "/Users/ironfish/.fzf/bin" ]]; then
  export PATH="$PATH:/Users/ironfish/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" =~ "/Users/ironfish/.fzf/man" && -d "/Users/ironfish/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/Users/ironfish/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- =~ i ]] && source "/Users/ironfish/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/ironfish/.fzf/shell/key-bindings.bash"

