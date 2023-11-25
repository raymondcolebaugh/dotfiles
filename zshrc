if [ -f "${HOME}/.host-config" ]; then
    source "${HOME}/.host-config"
fi

# Use vi keybindings
bindkey -v

setopt autocd autopushd pushdignoredups
setopt histignorealldups sharehistory

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f ~/tools/powerlevel10k/powerlevel10k.zsh-theme ]; then
    source ~/tools/powerlevel10k/powerlevel10k.zsh-theme
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf completion
[[ ! -f ~/.fzf/shell/completion.zsh ]] || source ~/.fzf/shell/completion.zsh
[[ ! -f ~/.fzf/shell/key-bindings.zsh ]] || source ~/.fzf/shell/key-bindings.zsh

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
if [ -d "$HOME/.rvm/bin" ]; then
    export PATH="$PATH:$HOME/.rvm/bin"
fi

if [ -d "${HOME}/.local/bin" ]; then
    PATH="${PATH}:${HOME}/.local/bin"
fi

if [ -d "${HOME}/.cargo/bin" ]; then
    PATH="${PATH}:${HOME}/.cargo/bin"
fi

if [ -d "${HOME}/.fzf/bin" ]; then
    PATH="${PATH}:${HOME}/.fzf/bin"
fi

if [ -e "${HOME}/.local/bin/fasd" ]; then
    eval "$(fasd --init posix-alias zsh-hook)"
fi

if [ -e "${HOME}/.aliases" ]; then
    source "${HOME}/.aliases"
fi

if [ -e "/usr/bin/direnv" ]; then
    eval "$(direnv hook zsh)"
fi

# Custom keybindings
if [ -e '/usr/bin/ranger' ]; then
    bindkey -s '^F' '/usr/bin/ranger'
fi
