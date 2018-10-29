# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# tell RipGrep where to look for it's config file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"

# fzf
_gen_fzf_default_opts() {
  local color00='#2d2d2d'
  local color01='#393939'
  local color02='#515151'
  local color03='#747369'
  local color04='#a09f93'
  local color05='#d3d0c8'
  local color06='#e8e6df'
  local color07='#f2f0ec'
  local color08='#f2777a'
  local color09='#f99157'
  local color0A='#ffcc66'
  local color0B='#99cc99'
  local color0C='#66cccc'
  local color0D='#6699cc'
  local color0E='#cc99cc'
  local color0F='#d27b53'

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