[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export EDITOR=vim

# define alias
alias en='source ~/virtualEnvironment/dilectus/bin/activate'

# enable the git bash completion commands
source ~/git-completion.bash

# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="."

# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."

# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."

# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

# return the prompt prefix for the second line
function set_prefix {
    BRANCH=`__git_ps1`
    if [[ -z $BRANCH ]]; then
        echo "${NORMAL}o"
    else
        echo "${UNDERLINE}+"
    fi
}

# 33[s = save cursor position
# 33[u = restore cursor position

PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}${MAGENTA}`__git_ps1 " on %s"`${WHITE}\r\n`set_prefix`${NORMAL}${CYAN}(`date "+%a, %b %d %H:%M"`)${WHITE}\r\n\$ '
