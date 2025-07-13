# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Shell Prompt
eval "$(starship init zsh)"

# smarter cd command
# eval "$(zoxide init zsh)"

# fzf
# source <(fzf --zsh)

# User configuration

source /usr/local/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#----- Vim Editing modes & keymaps ------
set -o vi
export EDITOR=nvim
export VISUAL=nvim

#----------------------------------------

# -------------------ALIAS----------------------
# For a full list of active aliases, run `alias`.

alias ga="git add ."
# alias gs="git status -s"
alias gc='git commit -m'
alias ls="eza --no-filesize --long --color=always --icons=always --no-user"

# ---------------------------------------


# pnpm
export PNPM_HOME="/Users/$USER/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Load Angular CLI autocompletion.
source <(ng completion script)

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

gopull() {
  git checkout "$1" && git pull
}
