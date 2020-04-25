# ADD THE FOLLOWING TO ~/.bashrc BEFORE unset use_color IS CALLED IF COLOR SUPPORT NEEDED

# SOURCE git-prompt.sh SCRIPT
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source "$HOME/.bash/git-prompt.sh"

# GIT THINGS TO ADD TO AWARE PROMPT
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=true

# SET PROMPT_COMMAND VARIABLE BASED ON WHETHER use_color IS SET OR NOT
if ${use_color} ; then
        if [[ ${EUID} == 0 ]] ; then
                PROMPT_COMMAND='__git_ps1 "\[\033[01;31m\][\h\[\033[01;36m\] \W\033[0m" "\[\033[01;31m\]]\$\[\033[00m\]>
        else
                PROMPT_COMMAND='__git_ps1 "\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\033[0m" "\[\033[01;32m\]]\$\[\033[00>
        fi
else
        if [[ ${EUID} == 0 ]] ; then
                PROMPT_COMMAND='__git_ps1 "\u@\h \W" " \$ "'
        else
                PROMPT_COMMAND='__git_ps1 "\u@\h \w" " \$ "'
        fi
fi

# EXPORT PROMPT_COMMAND
export PROMPT_COMMAND
