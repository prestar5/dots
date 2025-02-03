# pokeget
echo
pokeget random --hide-name
echo

# zsh plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf and zoxide
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)

# fzf catppuccin theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

autoload -U compinit && compinit -u

# prompt (stolen from luke smith)
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# history (stolen from luke smith too)
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
setopt inc_append_history

# env
source ~/.env

# aliases
source ~/.config/zsh/alias

# keybinds
source ~/.config/zsh/binds

# functions
source ~/.config/zsh/funcs


# dotfile alias
alias dots='/usr/bin/git --git-dir=$HOME/dots/ --work-tree=$HOME'
