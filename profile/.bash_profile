source ~/.profile
source ~/.bashrc
[ -f ~/.bash_private ] && source ~/.bash_private

alias crap='crap'
alias yarn-up='curl -o- -L https://yarnpkg.com/install.sh | bash'

# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
	
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function crap {
    printf "♻️  node: " && node -v
    if [ $# -eq 0 ] ; then
            printf "📦  npm: " && npm -v
            printf "❌  removing node_modules/\n"
            [ -d node_modules/ ] && rm -r node_modules
            printf "🔮  running npm install... \n\n"
            npm install
    else
            printf "💸  yarn: " && yarn --version
            printf "🗑  removing node_modules/\n"
            [ -d node_modules/ ] && rm -r node_modules/
            printf "🐕  Running yarn install... \n\n"
            yarn install
    fi
}

export PS1="🐙  \[\033[37m\]|\[\033[35m\]\w\[\033[37m\]|\[\033[36m\]\$(parse_git_branch) \[\033[0m\]\n-> "

export JAVA_HOME=$(/usr/libexec/java_home)
PATH=$PATH:$JAVA_HOME