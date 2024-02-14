# git
gc() { git commit -m "$*"; }
gpull() {
    GIT_PULL_BRANCH=${1:-$(gh)};
    echo "Pulling from branch '$(GIT_PULL_BRANCH)'";
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
alias gh='git rev-parse -abbrev-ref HEAD'
alias gpush='git push'
alias gs='git status'
alias gcp='git cherry-pick $*'
alias gm= 'git merge $*'
# git end