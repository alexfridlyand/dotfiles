# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export XDG_CONFIG_HOME=$HOME/.config

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# tell RipGrep where to look for it's config file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"

# fzf
_gen_fzf_default_opts() {
  local color00='#1d1f21'
  local color01='#282a2e'
  local color02='#373b41'
  local color03='#969896'
  local color04='#b4b7b4'
  local color05='#c5c8c6'
  local color06='#e0e0e0'
  local color07='#ffffff'
  local color08='#cc6666'
  local color09='#de935f'
  local color0A='#f0c674'
  local color0B='#b5bd68'
  local color0C='#8abeb7'
  local color0D='#81a2be'
  local color0E='#b294bb'
  local color0F='#a3685a'

  export FZF_DEFAULT_OPTS="
    --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D
    --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
    --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
  "
}
_gen_fzf_default_opts
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export ZPLUG_HOME=$HOME/.zplug

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
