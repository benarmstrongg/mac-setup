export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:$PWD/.bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias pn=pnpm 
# pnpm
export PNPM_HOME="/Users/barn/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# git
gc() { 
    if [ $# -eq 0 ]
        then git commit
        else git commit -m "$*"; 
    fi
}
gpull() {
    GIT_PULL_BRANCH=${1:-$(gh)};
    echo "Pulling from branch $GIT_PULL_BRANCH";
    git pull origin ${GIT_PULL_BRANCH};
}
ga() {
    if [ $# -eq 0 ]
        then git add .
        else git add $*
    fi
    git status;
}
alias gfetch='git fetch'
alias gb='git branch $*'
alias gco='git checkout $*'
alias gh='git rev-parse --abbrev-ref HEAD'
alias gpush='git push'
alias gs='git status'
alias gcp='git cherry-pick $*'
alias gm='git merge $*'
# git end