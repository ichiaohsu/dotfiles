# ------------------------------------- User settings -------------------------------------
DEFAULT_USER="ich"
# ------------------------------------- Environment settings -------------------------------------
export LC_ALL=en_US.UTF-8
PATH="$PATH:/Users/ich/.local/bin"
# ------------------------------------- Node.js -------------------------------------
# Node.js versions management with n
export N_PREFIX=~/.local
# ------------------------------------- Golang -------------------------------------
export GO111MODULE=on
# ------------------------------------- Python -------------------------------------
eval "$(pyenv init -)"
# ------------------------------------- Java -------------------------------------
export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
# ------------------------------------- Kubernetes -------------------------------------
# Force kubernetes to use vim for update yaml
export KUBE_EDITOR="vim"
# ------------------------------------- Terraform -------------------------------------
GCP_ORGS=12345
#TF_VAR_billing_account=YOUR_BILLING_ACCOUNT_ID
TF_ADMIN=abc123
TF_CREDS=~/.config/gcloud/${USER}-terraform-admin.json
GOOGLE_APPLICATION_CREDENTIALS=${TF_CREDS}
GOOGLE_PROJECT=${TF_ADMIN}

# Slack webook url
SLACK="https://hooks.slack.com/services/"

# Drone server url and token.
export DRONE_SERVER=http://127.0.0.1
export DRONE_TOKEN=abc123

# ------------------------------------- ZSH settings -------------------------------------
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

POWERLINE_HIDE_HOST_NAME=true
POWERLINE_DISABLE_RPROMPT=true
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ducknorris"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"

#alias zshconfig="s ~/.zshrc"
#alias ohmyzsh="s ~/.oh-my-zsh"

#alias my="/usr/local/mysql/bin/mysql"
#alias c="/usr/local/bin/cloc"
#alias s="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
#alias p="/usr/local/Cellar/python/2.7.5/bin/python"

#alias gpall="git pushall"

#COMPLETION_WAITING_DOTS="true"

#plugins=(git brew rails3 git-flow capistrano zeus)
#plugins=(git)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ich/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/ich/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ich/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/ich/google-cloud-sdk/completion.zsh.inc'; fi

