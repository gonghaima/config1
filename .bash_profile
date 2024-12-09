# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# author: wklken

############
#  format  #
############
# refresh profile
alias pr='. ~/.bash_profile'
alias e='code .'
alias bs="code ~/.bash_profile"
alias bp="code ~/.bash_profile"
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

alias tm="cd /Users/stevengong/temp"
alias wk="cd /Users/stevengong/work/Github"
alias sw="cd /Users/stevengong/work/Swiss"
alias sd="cd /Users/stevengong/study"
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
alias ms='mysql -uroot --password=""'    #mysql
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

# useful functions

#根据文件类型解压
#extract(){
ext(){
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjvf $1      ;;
            *.tgz)       tar xzvf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

#压缩
mktar(){ tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz(){ tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz(){ tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

#分屏同时打开多个文件
#vim -oN filea fileb filec
vo(){
   vim -o$# $*
}

#创建一个目录并跳转到
#make a dir and cd into it
mcd(){
    mkdir -pv "$@"
    cd "$@"
}

#保存一个文件到tmp
# save a file to ~/tmp
saveit() {
  cp $1 ${HOME}/tmp/${1}.saved
}

#交换两个文件
# switch two files (comes in handy)
switchfile() {
  mv $1 ${1}.tmp && mv $2 $1 && mv ${1}.tmp $2
}


#查看自己常用命令top n
# View most commonly used commands. depends on your history output format
used(){
if [ $1 ]
then
    history | awk '{print $4}' | sort | uniq -c | sort -nr | head -n $1
else
    history | awk '{print $4}' | sort | uniq -c | sort -nr | head -n 10
fi
}


#最常用，复制一个路径过来时，不用修改，可以到达路径的最深一层目录
#if dir,cd into it. if file ,cd into where the file is
goto(){ [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }


#临时文件
mvtmp(){
  mv $1 ~/tmp/
}

function cptmp(){
  cp -r $1 ~/tmp/
}


# thefuck

# tmp
alias jj="~/workspace/bin/gossh"
alias spi="sudo /usr/local/bin/pip install"
alias jjj="~/bin/kw3gossh"

# install https://github.com/what-studio/profiling
alias pypro='python -m profiling profile'

# install promptpython
alias pt='ptpython'

# Git shortcuts
gcp(){
    ga
    gc "$@"
    gps
}
gac(){
    ga
    gc "$@"
}

alias gi='git init'
alias ga='git add .'

alias gg='git config user.email "gonghaima@hotmail.com"'
alias gw='git config --global user.email "hgong@woolworths.com.au"'
alias gwg='git config --global user.email "gonghaima@hotmail.com"'
alias gs='git config --global user.email "hai_gong@swissre.com"'
alias ge='git config user.email'

alias gh="open \`git remote -v | grep git@github.com | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/:/\//' -e 's/git@/http:\/\//'\`"
alias gb='git branch'
alias gba='git branch -a'
alias gro='git remote show origin'
# https://gonghaima@github.com/gonghaima/chart.git
alias grs="git remote set-url origin"
alias gra="git remote add origin"
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
alias gd1='echo "git diff HEAD"; git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias gd3='echo "git diff HEAD^1"; git diff HEAD^1'
alias gcc='git clean cache -f'
alias gf='git fetch'
# To untrack a file, after adding it to .gitignore
alias gau='git update-index --assume-unchanged'
#alias gsa='git submodule add'
#alias gsu='git submodule update --init'
#alias gup='git fetch && git rebase'
#alias gdv='git diff -w "$@" | vim -R -'
#alias gcount='git shortlog -sn'
#alias gexport='git archive --format zip --output'
#alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stevegong/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/stevegong/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stevegong/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/stevegong/Downloads/google-cloud-sdk/completion.bash.inc'; fi
