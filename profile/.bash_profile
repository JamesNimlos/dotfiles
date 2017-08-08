source ~/.profile
source ~/.bashrc
[ -f ~/.bash_private ] && source ~/.bash_private

alias crap='crap'
alias crappy='crap -y'
alias so='smart-optimizer'
alias grd='gulp runDev'
alias yarn-up='curl -o- -L https://yarnpkg.com/install.sh | bash'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
	
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/james/google-cloud-sdk/path.bash.inc' ]; then source '/Users/james/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/james/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/james/google-cloud-sdk/completion.bash.inc'; fi

export JAVA_HOME=$(/usr/libexec/java_home)
PATH=$PATH:$JAVA_HOME
