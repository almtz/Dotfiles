export EDITOR="nvim"

# XDG Paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

# Disable files
export LESSHISTFILE=-

# Cleanup
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export NVM_DIR="$XDG_DATA_HOME"/nvm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/config.toml
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_AUTOREMOVE=1
export HOMEBREW_NO_ANALYTICS=1

# PATH
export PATH="$XDG_DATA_HOME/cargo/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
