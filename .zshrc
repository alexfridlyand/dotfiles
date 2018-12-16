# completion
autoload -U compinit
compinit

export VISUAL="nvim"
export EDITOR="$VISUAL"

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell


source $ZPLUG_HOME/init.zsh
[ -f ~/.zplugrc ] && source ~/.zplugrc

# load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

source "$HOME/.nix-profile/share/fzf/completion.zsh" 2> /dev/null
source "$HOME/.nix-profile/share/fzf/key-bindings.zsh"

source "$HOME/.nix-profile/etc/profile.d/nix.sh"
