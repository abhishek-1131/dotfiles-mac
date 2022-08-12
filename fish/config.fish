if status is-interactive
    and not set -q TMUX
    exec /opt/homebrew/bin/tmux
end

set fish_greeting
set -g theme_color_scheme dracula
set -g theme_display_git no
set -g theme_display_date no
set -g theme_display_virtualenv no
set -g theme_display_docker_machine yes
set -g theme_display_node yes
set -g theme_display_user no
set -g theme_display_hostname no

export EDITOR=nvim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
status is-interactive && eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" hook $argv | source
# <<< conda initialize <<<

alias ll="exa --long --icons"
alias ll2="ll --long --tree --level=2 -a"
alias ll3="ll --long --tree --level=3 -a"
alias ll5="ll --long --tree --level=5 -a"
alias vi="nvim"
alias cl="clear"
alias lc="clear"
alias dots="cd ~/dotfiles && ll"
alias vimw="cd ~/vimwiki"
alias tms="tmux source ~/.tmux.conf"
alias dotvim="clear && cd ~/dotfiles/nvim && ll5"
alias gll="git log --graph --pretty=oneline --abbrev-commit"
alias gs="git status"
alias gp="git pull"
alias cab="conda activate base"

set PATH /opt/homebrew/opt/ruby/bin $PATH
set PATH /Users/kehsihba/.cargo/bin $PATH
eval (/opt/homebrew/bin/brew shellenv)
