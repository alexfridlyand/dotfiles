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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexfridlyand/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alexfridlyand/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexfridlyand/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alexfridlyand/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.config"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
