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
fish_vi_key_bindings

export EDITOR=nvim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
status is-interactive && eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" hook $argv | source
# <<< conda initialize <<<

alias ll="exa --long --icons"
alias ll2="ll --long --tree --level=2"
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
alias r="ranger"
alias lmfs="cd ~/Documents/LMFS && conda activate pytorch && ll"
alias z="cd (dirh | ghead -n -2 | fzf | cut -c 5-)"
alias lab="jupyter lab"
alias cdc="cd ~/Documents/courses && ll2"
alias bdl2="cd ~/Documents/courses/bdl2 && ll2 && tmux new-window -n lab 'lab'"
alias fun="cd ~/Documents/fun/ && ll"

set PATH /opt/homebrew/lib/python3.9/site-packages $PATH
set PATH /opt/homebrew/opt/ruby/bin $PATH
set PATH /Users/kehsihba/.cargo/bin $PATH
set PATH /opt/homebrew/Caskroom/miniforge/base/bin $PATH

eval (/opt/homebrew/bin/brew shellenv)

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_341.jdk/Contents/Home/"

# Hadoop 

export HADOOP_HOME=/Users/kehsihba/hadoop-3.3.4/
export HADOOP_INSTALL=$HADOOP_HOME 
export HADOOP_MAPRED_HOME=$HADOOP_HOME 
export HADOOP_COMMON_HOME=$HADOOP_HOME 
export HADOOP_HDFS_HOME=$HADOOP_HOME export YARN_HOME=$HADOOP_HOME 
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export PATH="$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin"
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/nativ"
