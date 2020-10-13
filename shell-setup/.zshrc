
export ZSH=$HOME/.oh-my-zsh

# Theme

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_CONTEXT_TEMPLATE="%n Hack!!"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram battery)


# POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
# POWERLEVEL9K_SHORTEN_DELIMITER=""
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"



HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"


# DISABLE_UNTRACKED_FILES_DIRTY="true"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
    git
    zsh-syntax-highlighting
    # dotenv
    git
    docker
    docker-compose
    golang
    node
    npm
    python
    pylint
    tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


alias please=sudo
alias cat=bat
