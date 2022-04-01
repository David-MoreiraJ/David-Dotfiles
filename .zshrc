# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
alias music='mpd && ncmpcpp'
alias suck='cd ~/Suckless/dwm && sudo make clean install && cd ~'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias ls="exa --icons -a"
alias cat="bat" 

# Autostart
neofetch

# Plugins.
#source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
