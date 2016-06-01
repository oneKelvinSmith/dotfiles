alias g 'git'

alias ga 'git add'
alias gaa 'git add --all'
alias gap 'git add --patch'

alias gb 'git branch'
alias gba 'git branch -a'
alias gbr 'git branch --remote'
alias gbda 'git branch --merged | grep -vE "^(\*|\s*master\s*\$)" | xargs -n 1 git branch -d'
alias gbnm 'git branch --no-merged'

alias gbl 'git blame -b -w'

alias gbs 'git bisect'
alias gbsb 'git bisect bad'
alias gbsg 'git bisect good'
alias gbsr 'git bisect reset'
alias gbss 'git bisect start'

alias gc 'git commit -v'
alias gca 'git commit -v -a'
alias gcm 'git commit -m'
alias gcam 'git commit -a -m'
alias gcs 'git commit -S'
alias gc! 'git commit -v --amend'
alias gca! 'git commit -v -a --amend'
alias gcan! 'git commit -v -a -s --no-edit --amend'

alias gcf 'git config --list'

alias gcl 'git clone --recursive'

alias gco 'git checkout'
alias gcob 'git checkout -b'
alias gcom 'git checkout master'

alias gcount 'git shortlog -sn'

alias gcp 'git cherry-pick'

alias gd 'git diff'
alias gdca 'git diff --cached'
alias gdct 'git describe --tags `git rev-list --tags --max-count=1`'
alias gdt 'git diff-tree --no-commit-id --name-only -r'

alias gdw 'git diff --word-diff'

alias gf 'git fetch'
alias gfa 'git fetch --all --prune'
alias gfo 'git fetch origin'

alias gignore 'git update-index --assume-unchanged'
alias gignored 'git ls-files -v | grep "^[[:lower:]]"'

alias gl 'git log --stat --color'
alias glg 'git log --graph --color'
alias glp 'git log --stat --color -p'
alias glo 'git log --oneline --decorate --color'
alias glga 'git log --graph --decorate --all'
alias glgm 'git log --graph --max-count=10'
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog 'git log --oneline --decorate --color --graph'

alias gm 'git merge'
alias gmom 'git merge origin/master'
alias gmt 'git mergetool --no-prompt'
alias gmtvim 'git mergetool --no-prompt --tool=vimdiff'
alias gmum 'git merge upstream/master'

alias gp 'git push'
alias gpd 'git push --dry-run'
alias gpu 'git push upstream'
alias gpv 'git push -v'
alias gpoat 'git push origin --all; and git push origin --tags'

alias grb 'git rebase'
alias grba 'git rebase --abort'
alias grbc 'git rebase --continue'
alias grbi 'git rebase -i'
alias grbm 'git rebase master'
alias grbs 'git rebase --skip'

alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'

alias gr 'git remote'
alias gra 'git remote add'
alias grmv 'git remote rename'
alias grrm 'git remote remove'
alias grset 'git remote set-url'
alias grup 'git remote update'
alias grv 'git remote -v'

alias grt 'cd (git rev-parse --show-toplevel; or echo ".")'

alias gru 'git reset --'

alias gsps 'git show --pretty=short --show-signature'

alias gs 'git status'
alias gss 'git status -s'
alias gsb 'git status -sb'

alias gst 'git stash'
alias gsta 'git stash apply'
alias gstd 'git stash drop'
alias gstl 'git stash list'
alias gstp 'git stash pop'
alias gsts 'git stash show --text'

alias gsi 'git submodule init'
alias gsu 'git submodule update'

alias gts 'git tag -s'
alias gtv 'git tag | sort -V'

alias gup 'git pull --rebase'
alias gupv 'git pull --rebase -v'
alias gupm 'git pull upstream master'

alias gvt 'git verify-tag'

alias gclean 'git clean -fd'
alias gpristine 'git reset --hard; and git clean -dfx'

alias gwch 'git whatchanged -p --abbrev-commit --pretty=medium'

alias gwip 'git add -A; and git rm (git ls-files --deleted) 2> /dev/null; and git commit -m "--wip--"'
alias gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-"; and git reset HEAD~1'

alias gunignore 'git update-index --no-assume-unchanged'
