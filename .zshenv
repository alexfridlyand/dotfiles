# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export XDG_CONFIG_HOME=$HOME/.config

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# tell RipGrep where to look for it's config file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"

# Base16 Bright
# Author: Chris Kempson (http://chriskempson.com)

_gen_fzf_default_opts() {

local color00='#000000'
local color01='#303030'
local color02='#505050'
local color03='#b0b0b0'
local color04='#d0d0d0'
local color05='#e0e0e0'
local color06='#f5f5f5'
local color07='#ffffff'
local color08='#fb0120'
local color09='#fc6d24'
local color0A='#fda331'
local color0B='#a1c659'
local color0C='#76c7b7'
local color0D='#6fb3d2'
local color0E='#d381c3'
local color0F='#be643c'

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
