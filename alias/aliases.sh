# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias pr='. ~/.bash_profile'
alias e='code .'
alias bs='code "C:\Program Files\Git\etc\profile.d"'
alias t='npm test'
alias s='npm start'
alias r='npm run'
alias i='npm install'
alias y='yarn start'
#kill port
alias p='npx kill-port '
#alias name=value
#alias name='command'
#alias name='command arg1 arg2'
#alias name='/path/to/script'
#alias name='/path/to/script.pl arg1'
#unalias aliasname

alias n="open -a Terminal `pwd`"
function k () { mkdir -p "$@" && eval cd "\"\$$#\""; }
alias d="rm -rf $1"
alias o="open ."
# life queryg
alias op="open `pwd`"
alias tq="curl wttr.in/shenzhen"

# brew
# alias bs="brew services"
# alias bsl="brew services list"

# editor
alias vi="vim"
alias edit="vim"

alias grep="grep -E --color"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias mkdir="mkdir -pv"
alias tf='tail -f'  #动态查看文件变化
alias af="awk -F '\t' '{print NF}'"   #查看文件列数，用\t分隔，最常用，其实也可以搞个通用的，接收参数
alias wl='wc -l'    #统计行数

alias c="clear"   #清屏
alias cls="clear"   #清屏

alias h='pwd|pbcopy' # copy current path to clickboard
alias cp='cp -v'
alias cpr='cp -r'
alias mv='mv -v'

alias df="df -h"
alias du="du -h"
alias dus="du -s"   #磁盘
alias du0="du --max-depth=0"
alias du1="du --max-depth=1"

alias last="last -a"
alias free='free -m'

#Notice: install colordiff
alias diff='colordiff'
alias vd='vimdiff'  #vim diff两个文件
alias tree='tree -C'

alias dfind='find -type d -name'  #查找文件夹
alias ffind='find -type f -name'  #查找文件

alias chux='chmod u+x'    #该权限

# tool
alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \; >> /dev/null 2>&1'  #递归删除目录下所有pyc
alias rmlog='rm *.log;rm *.log.*'
alias now='date +"%Y-%m-%d %T"'

#for tmux
#alias tm='tmux -2'
alias tmux='tmux -2'
alias tma='tmux -2 attach'
alias tmx='tmuxinator'


# chdir
alias ..="cd .."
alias cdd="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias -- -='cd -'
alias cds='echo "`pwd`" > ~/.cdsave'  #cd save : save where i am
alias cdb='cd "`cat ~/.cdsave`"'  # cd back

# processes
alias pg='ps -ef | grep'

# services
alias ssh='ssh -2'

# ls for mac
alias ll='ls -al'   #ls相关，这里--color需要根据终端设
alias lx='ls -lhBX'        #sort by extension
alias lz='ls -lhrS'        #sort by size
alias lt='ls -lhrt'        #sort by date    最常用到，ls -rt，按修改时间查看目录下文件
alias lsd='find . -maxdepth 1 -type d | sort'   #列出所有目录
alias sl='ls'

# net
alias pong='ping -c 5 '   #ping，限制
alias ports='netstat -tulanp'
alias myip='curl ifconfig.me'

# install https://github.com/what-studio/profiling
alias pypro='python -m profiling profile'

# install promptpython
alias pt='ptpython'

# Git shortcuts

alias gi='git init'
alias ga='git add .'
alias ge='git config user.email'
alias gb='git branch'
alias gba='git branch -a'
alias gro='git remote show origin'
# https://gonghaima@github.com/gonghaima/chart.git
alias grs='git remote set-url origin'
alias gra='git remote add origin'
alias gbd='git branch -D'
alias gbdr='git push origin --delete'
alias gc='git commit -m'
alias gcl='git clone'
alias gcd='git clean -fd'
alias gco='git checkout'
# alias gcp='git cherry-pick'
alias gclean='git fetch --prune'
alias gd='git diff'
alias gdi='git di'
alias gr='git rm'
alias grh='git reset --hard'
# alias gs='git status'
alias gss='git stash save ' # git stash save doing crazy things
alias gst='git stash'
alias gsa='git stash apply'
alias gsk='git add . && git stash save --keep-index'
alias gso='git checkout stash@{0} -- '  #apply one file from stash - filename as a param
alias gs1='git stash push '  #stash one file - filename as a param
alias gl='git log'
alias gll='git lg'
alias gull='git pull origin'
alias gp='git pull'
alias gps='git push'
alias gush='git push origin'
alias gt='git checkout'
alias gtb='git checkout -b'
alias gtd='git checkout develop'
alias gm='git merge --no-ff'
alias gcc='git clean cache -f'
alias gf='git fetch'
alias r='npm run'
alias t='npm run test'

gcp(){
    ga
    gc "$@"
    gps
}
gac(){
    ga
    gc "$@"
}
