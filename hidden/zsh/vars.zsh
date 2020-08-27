# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export HISTFILE="${HOME}/.zsh_history"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# VIM
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

export ZSH_AUTOSUGGEST_USE_ASYNC="true"  ## zsh-autosuggest

export $(cat ${HOME}/.env |xargs)

# Commands below are done through ZSH plugins using antibody
# rbenv
#eval "$(rbenv init -)"
# pyenv
#export PATH="/Users/ecepeda/.pyenv/bin:$PATH"
#eval "$(pyenv init - --no-rehash)"
#eval "$(pyenv virtualenv-init -)"
