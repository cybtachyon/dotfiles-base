###
 # .profile
 # Login shell script for all nix environments.
 #
 # Executes on each user session login.
 ## 

export PATH="$HOME/.config/composer/vendor/bin:$PATH" # Add composer vendor bin to PATH
#export PATH="/usr/local/php7/bin:$PATH" # Add PHP to PATH
export PATH="$HOME/.dotfiles/bin:$PATH"

export EDITOR=vim

## Utility Aliases
# Quick Find
qf() {
  echo "find $1 ! -readable -prune -o -type f -name \"$2\" -print 2>/dev/null"
  find $1 ! -readable -prune -o -type f -name \"$2\" -print 2>/dev/null
}
alias grep="grep --color=auto"
taradd() {
  echo "tar -rvf $1 $2"
  tar -rvf $1 $2
}
tarls() {
  echo "tar -tvf $1"
  tar -tvf $1
}
tarz() {
  echo "tar -czvf $1 $2"
  tar -czvf $1 $2
}
taraddz() {
  tar -xvf $1 -C /tmp/tar_tmp
  cp $2 /tmp/tar_tmp
  tar -czvf $1 /tmp/tar_tmp/*
  rm -R /tmp/tar_tmp/*
}
untarz() {
  echo "tar -xvf $1"
  tar -xvf $1
}

## Git Aliases
# Visual Log with Graph
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# Stash
git config --global alias.ss "stash show stash^{/$*} -p"
git config --global alias.sa "stash apply stash^{/$*}"
# Copy Release Notes to Clipboard
git config --global alias.crn "!crn() { git log --pretty='%s' \$1..\$2 | sed -e '/^Merge/ d' | xclip -selection c; }; crn"
# Copy Branch Commits to Clipboard
git config --global alias.cbn "!cbn() { git cherry -v develop | sed -e 's/^.\{0,43\}//' | xclip -selection c; }; cbn"
# Solves long filename issues on Windows
git config --system core.longpaths true

## Environment-specific scripts.
# Linux
[[ -s "$HOME/.linux_profile" ]] && source . ~/.linux_profile

# OSX
# [[ -r ~/.osx_profile ]] && . ~/.osx_profile

