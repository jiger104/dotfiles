#!/usr/bin/env bash


# Source the alias and zshenv files
source $HOME/.config/zsh/.alias.sh
source $HOME/.config/zsh/.zshenv.sh

# Load Autojump
[ -f $BREW_DIR/etc/profile.d/autojump.sh ] && . $BREW_DIR/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# Load FZF
source <(fzf --zsh)

# Load ZSH autosuggestions
source $BREW_DIR/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load powerlevel10k
source $BREW_DIR/share/powerlevel10k/powerlevel10k.zsh-theme

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load Google Cloud SDK
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR="$BREW_DIR/bin/mate -w"
  export VISUAL=$EDITOR
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh