EDITOR='vi'
set -o vi

# Aliases
sl="ls"
alias vix='vi -u ~/.vimrc-x -x'
# Enable less-style vim for syntax highlighting.
if [ -e /usr/share/vim/vim73/macros/less.sh ]; then
    alias less="/usr/share/vim/vim73/macros/less.sh"
fi
