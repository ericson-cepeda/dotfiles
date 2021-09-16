# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias fzf="$HOME/.vim/bundle/fzf/fzf"
# fh - repeat history
_fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fh - repeat history edit
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# cdf - cd into the directory of the selected file
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# More Git aliases
# alias git='hub'
alias g='git'
alias gst='git status -s'
alias gpull='git pull'
alias gp='git push'
alias gf='git fetch'
alias gd='git difftool'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -m'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias glog='git log --oneline --decorate'
alias glogg='git log --oneline --decorate --graph'
alias glogs='git log --oneline --decorate --stat'
alias gcl='git clone'
alias gdc='git difftool --cached'

# #Aliases for ls
alias ll='ls -lh'
alias l='ls -lhA'
alias lsa='ls -a'

alias rm='rm -i'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash }

# Create or attach a tmux socket at $HOME
# Tip: aliases cannot handle interpolation or positional arguments
tmus() { tmux -2uS ${HOME}/.tmux_session_$@ attach || tmux -2uS ${HOME}/.tmux_session_$@ new }

pb64() { pbpaste | base64 $1 | pbcopy }

alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'

alias tmux="tmux -2u"
alias tmub="tmux -2uL base attach || tmux -2uL base new"
alias tmug="echo $TMUX | cut -f1 -d','"
alias tmur="tmux source-file ~/.tmux.conf"

# alias vim="vim -x"
alias -s {yml,yaml}=vim

alias yaml2js="python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)'"
alias scp='noglob scp'

alias update="antibody update && vim -c :PlugUpdate"
