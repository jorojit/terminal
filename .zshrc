# ENV Variables/PATHs
export ZSH="${HOME}/.oh-my-zsh"
export GOPATH="${HOME}/go"
export EDITOR=vim
export KUBE_EDITOR=vim
export AWS_CLI_AUTO_PROMPT=on-partial
export PATH=/usr/local/bin/:$PATH:$HOME/bin
export PATH="${PATH}:${HOME}/.krew/bin"
export KUBECONFIG=~/.kube/config

# ZSH Setup
plugins=(
    command-not-found
    extract
    deno
    docker
    git
    github
    gitignore
    history-substring-search
    node
    npm
    volta
    vscode
    sudo
    web-search
    z
    zsh-z
    zsh-autosuggestions
    zsh-syntax-highlighting
    ohmyzsh-full-autoupdate
    ansible
    aws
    fzf
    pip
    python
    brew
    terraform
    kubectl
    fzf-zsh-plugin
)
source $ZSH/oh-my-zsh.sh
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# This needs to be after the autoloads
kubectl completion zsh > ~/.kubectl-completion
source ~/.kubectl-completion
complete -C '/usr/local/bin/aws_completer' aws

# Env Variables
# Extra more custom ENV variables
[[ -f ~/.zsh/envs.zsh ]] && source ~/.zsh/envs.zsh

# Aliases and Functions
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh


# Setup Starship prompt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
eval "$(starship init zsh)"


# Setup Fuzzy Finder
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --zsh)"
elif [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
