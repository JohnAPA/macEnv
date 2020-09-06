# ------------| .ZSHrc | ----------------
#----------------------------------------

# ------ Export Paths
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/cube/.oh-my-zsh" 
export PATH=$PATH:/opt/WebDriver/bin >> ~/.profile



# ------ ZSH Config
ZSH_THEME="robbyrussell"
plugins=(iterm2 zsh-z)

# ------- Settings
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm.dd.yyyy"
export LANG=en_US.UTF-8

# ------ User configuration ----------
	# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='subl'
else
  export EDITOR='mvim'
fi

# ------ | Sources | -------------
source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#-- For zsh-z
autoload -U compinit && compinit
# zstyle ':completion:*' menu select

# ------- | Alias

alias edit="subl ~/.zshrc ~/.oh-my-zsh/custom/aliases.zsh ~/.oh-my-zsh/custom/functions.zsh && subl --command "show_panel {\"panel\": \"console\", \"toggle\": true}""

# ------- Dir Browsing
d='dirs -v | head -10'
1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'


#------- Custom
# unsetopt correct_all
# #Disable autocorrect
# unsetopt correct_all
# unsetopt correct
# DISABLE_CORRECTION="true" 


# -----| Disabled
# alias edit="subl ~/.zshrc"
# DISABLE_MAGIC_FUNCTIONS="true" # Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_LS_COLORS="true" # Uncomment the following line to disable colors in ls.
# DISABLE_AUTO_TITLE="true" # Uncomment the following line to disable auto-setting terminal title.
# zstyle :omz:plugins:ssh-agent agent-forwarding on
# export PATH=$PATH:/usr/local/bin
