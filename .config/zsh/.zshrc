eval "$(starship init zsh)"

# History in chace
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Auto complete
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# Aliases
alias v="nvim"
alias ls="ls -F"
alias ll="ls -Fl"
alias dotfiles='/usr/bin/git --git-dir=$HOME/Developer/.dotfiles/ --work-tree=$HOME'
alias zshrc="source .config/zsh/.zshrc"

# NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
