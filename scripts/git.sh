git config --global user.name "David Alexander"
git config --global user.email "me@dja.dev"
git config --global user.username "devdave25"


git config --global --add alias.lola 'log --graph --decorate --abbrev-commit --all --date=local --pretty=format:"%C(auto)%h%d %C(blue)%an %C(green)%cd %C(red)%GG %C(reset)%s" --date=local'
git config --global --add alias.lol 'log --graph --decorate --abbrev-commit --all --oneline'

git config --global rebase.autosquash true