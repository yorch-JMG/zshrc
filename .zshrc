# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100

export BAT_THEME="Visual Studio Dark+"
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jorge/.zshrc'

autoload -Uz vcs_info
precmd(){ 
	vcs_info 
}
HOST=$(hostname)

zstyle ':vcs_info:git:*' formats '%F{yellow}%b '
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_" %F{247}at %F{247}%D{%L:%M:%S}"
PS1=$'%F{magenta}$HOST%F{yellow}@%F{blue}%n%f: %F{cyan}%~%f\n $ '
autoload -Uz compinit
compinit
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1

# End of lines added by compinstall
alias nv="nvim"
alias nvplug="nvim ~/.config/nvim/vim-plug/plugins.vim"
alias nvkb="nvim ~/.config/nvim/editor-config/key-mappings/keymappings.vim"
alias nvconf="nvim ~/.config/nvim/editor-config/configuration.vim"
alias nvinit="nvim ~/.config/nvim/init.vim"
alias termconf="nvim ~/.config/alacritty/alacritty.yml"
alias picomconf="sudo nvim ~/.config/picom/picom.conf"
alias sourcezsh='~/scriptsSH/source.sh'
alias zshconf='nvim ~/.zshrc'
alias dwmconf="nvim ~/repos/dwm/config.h"
alias l='exa'
alias la='exa -la'
alias gitbranches="git log --all --decorate --oneline --graph"
alias changebg="~/scriptsSH/changeBackground.sh"
alias internet="~/scriptsSH/checkInternet.sh"
alias turnoff="~/scriptsSH/poweroff.sh"
alias reset="~/scriptsSH/reset.sh"
alias light="~/scriptsSH/backlight.sh"
alias vol="alsamixer"
alias getclass="~/workspace/getClass/target/release/get-class"
source /usr/share/nvm/init-nvm.sh
source ~/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
