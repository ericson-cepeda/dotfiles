
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # https://github.com/romkatv/powerlevel10k/issues/1872
  # POWERLEVEL9K_MODE=ascii
  # sed -i -E 's/&& -o no_xtrace //' "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  # setopt xtrace
  builtin source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  # unsetopt xtrace
fi

POWERLEVEL9K_INSTANT_PROMPT=off
POWERLEVEL9K_DISABLE_HOT_RELOAD=true
# https://github.com/Powerlevel9k/powerlevel9k/issues/992
# https://github.com/romkatv/powerlevel10k/issues/175
POWERLEVEL9K_DISABLE_RPROMPT=true

# Neutral color: ' %244F\uE0B1 '
POWERLEVEL9K_WIFI_FOREGROUND=244
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' \uE0B1 '
POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
#    host public_ip vpn_ip kubecontext terraform aws context nordvpn ranger newline
#    dir vcs background_jobs virtualenv anaconda pyenv nodenv nvm nodeenv rbenv rvm newline
#    command_execution_time status prompt_char
     time public_ip aws gcloud kubecontext newline
     vpn_ip host disk_usage ram load wifi newline
     dir vcs background_jobs virtualenv newline
     command_execution_time status prompt_char
)

# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PUBLIC_IP_HOST=http://checkip.amazonaws.com
POWERLEVEL9K_PUBLIC_IP_TIMEOUT=60
