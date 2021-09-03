# DO NOT EDIT THIS FILE
# duplicate this file in zsh/custom/
# to enable/add your own custom configuration


# Alias Python 3 and pip3 because we also have
# Python 2 and Pip installed for legacy stuff.
alias python="python3"
alias pip="pip3"

# Some default commands 
alias pserve="python -m http.server 80" # Start a webserver with the current Dir as root.
alias pup="pip3 install --user --upgrade" # to upgrade installed packages.

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
}
compctl -K _pip_completion pip
# pip zsh completion end