#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

HOST_NAME=$HOSTNAME
USERNAME=$USER

export PATH=$PATH:/home/bangjdev/Softs/apache-maven-3.6.3/bin
export TERMINAL=termite

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
bldred='\e[1;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset
bldwht='\e[1;37m' # Bold white

emojis=("👾" "🌐" "🎲" "🌍" "🐉")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $bldred%s : $bldpur📁 %s $bldgrn%s\n$txtrst" "$HOST_NAME@$USERNAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=" $ > "

