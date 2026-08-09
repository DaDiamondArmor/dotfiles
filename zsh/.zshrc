# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

alias ls="lsd -A"
alias cd="z"
alias pacdiff="DIFFPROG=meld pacdiff"
alias cast="systemctl --user daemon-reload
systemctl --user restart xdg-desktop-portal-gnome.service xdg-desktop-portal.service"
alias clear="clear && fastfetch -l AmogOS"
alias reflector="sudo reflector --country India --latest 5 --sort rate --save /etc/pacman.d/mirrorlist"
alias fastfetch="fastfetch --logo /home/diamond/belugachoso.png"

setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/diamond/.zshrc'
autoload -U select-word-style
autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(oh-my-posh init zsh)"
# eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
fastfetch -l  AmogOS

export PATH=$PATH:/home/diamond/.spicetify

# zsh plugins
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
#source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

alias dotfiles=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME expands to previous command
export DISPLAY=:0
. "/home/diamond/.deno/env"

select-word-style bash

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^H"     backward-kill-line
bindkey '^[[1;5H' backward-word
bindkey '^[[1;5F' forward-word

# pnpm
export PNPM_HOME="/home/diamond/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light marlonrichert/zsh-autocomplete
### End of Zinit's installer chunk

source /usr/share/nvm/init-nvm.sh
