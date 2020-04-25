# ADD THE FOLLOWING TO ~/.bashrc BEFORE unset color_prompt IS CALLED IF COLOR SUPPORT NEEDED

# SOURCE git-prompt.sh SCRIPT
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source "$HOME/.bash/git-prompt.sh"

# GIT THINGS TO ADD TO AWARE PROMPT
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=true

# SET PROMPRT_COMMAND VARIABLE BASED ON WHETHER color_prompt IS SET OR NOT
if [ "$color_prompt" = yes ]; then
    PROMPT_COMMAND='__git_ps1 "${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]" "\$ "'
else
    PROMPT_COMMAND='__git_ps1 "${debian_chroot:+($debian_chroot)}\u@\h:\w" "\$ "'
fi

# EXPORT PROMPT_COMMAND
export PROMPT_COMMAND
