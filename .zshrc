# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/maury/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=""
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle jump

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell

# uncomment to use bullet-train theme
    #antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
    #BULLETTRAIN_PROMPT_ORDER=(git context dir time)
    #BULLETTRAIN_PROMPT_ORDER=(
    #    custom
    #    context
    #    dir
    #    git
    #    screen
    #    #perl
    #    #ruby
    #    virtualenv
    #    time
    #    status
    #    nvm
    #    aws
    #    go
    #    elixir
    #    hg
    #    #cmd_exec_time
    #)
    #BULLETTRAIN_PROMPT_CHAR="(UwU) "
    #BULLETTRAIN_CONTEXT_BG=green

# uncomment to use spaceship-prompt theme
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  python         # Python
  dotnet        # .NET section
  exec_time     # Execution time
  time          # Time stampts section
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Backgound jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_CHAR_SYMBOL="(UwU) "
SPACESHIP_USER_SHOW="always"
SPACESHIP_TIME_SHOW="true"

# Tell Antigen that you're done.
antigen apply

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
alias zshconfig="vim ~/.zshrc"
alias no='ls'
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/home/maury/anaconda3/bin:$PATH"

dvreceive() {
    port=6537;
    echo "Waiting for files...";
    nc -l -p $port | tar -zx;
}

dvsend () {
    if [ $# -lt 2 ]
    then
        echo "dvsend <destination> <files>"
        return 1
    fi
    dest=$1 
    shift
    if tar -zc "$@" | nc $dest 6537
    then
        echo "Successfully sent files"
    else
        echo "Error sending files. Is the destination listening?"
        return 1
    fi
}

# export PATH="/home/maury/miniconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/maury/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/maury/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/maury/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/maury/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

