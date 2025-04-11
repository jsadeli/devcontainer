# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Change the command execution time stamp shown in the history command output
HIST_STAMPS="yyyy-mm-dd"

# Plugins to load
plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

# Activate oh-my-posh prompt; this should be the last line.
eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/jsadeli/dotfiles/refs/heads/main/configs/p10k_lean.omp.json')"
