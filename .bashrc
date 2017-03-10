###
 # .bashrc
 # Bash once-on-login shell script.
 ##

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User CLI config.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

## Bash auto-completion scripts
# Git
if [ -f ~/.gitcompletion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.tmuxinator.bash ]; then
  . ~/.tmuxinator.bash
fi

## Bash prompts
# Custom
if [ -f ~/.tachyon_prompt.bash ]; then
  . ~/.tachyon_prompt.bash
fi

## Bash Integrations

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

