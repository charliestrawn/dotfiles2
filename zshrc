# Path to your oh-my-zsh installation.

source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen theme fino

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
