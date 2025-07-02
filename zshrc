# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LANG=en_US.UTF-8
export ZSH="/Users/feixiang.li/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'

plugins=(macos git golang python aliases vundle zsh-syntax-highlighting colorize)

export GOPATH=$HOME/Projects/go
#export GOOS=linux
export PATH=/opt/homebrew/bin:$PATH:$GOPATH/bin:${KREW_ROOT:-$HOME/.krew}/bin
export HOMEBREW_GITHUB_API_TOKEN=$(security find-generic-password -a "$USER" -s "github-brew-api-token" -w)

export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
export GOPRIVATE=github.com/luke

function k() {
    args=()
    if [[ -n "${KUBE_CTX}" ]]; then
        args+=( "--context=${KUBE_CTX}" )
    fi
    if [[ -n "${KUBE_NS}" ]]; then
        args+=( "--namespace=${KUBE_NS}" )
    fi
    kubectl "${args[@]}" "${@}"
}

alias k='kubectl'
alias kd='kubectl drain --ignore-daemonsets --delete-emptydir-data'
alias ka='kubectl --all-namespaces'
alias g='git'

#Check your ~/.docker/config.json and replace "credsStore" by "credStore"

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
