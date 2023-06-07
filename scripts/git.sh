git config --global user.name "David Alexander"
git config --global user.email "me@dja.dev"
git config --global user.username "devdave25"

git config --global core.excludesfile ~/.gitignore_global

git config --global --add alias.lola 'log --graph --decorate --abbrev-commit --all --date=local --pretty=format:"%C(auto)%h%d %C(blue)%an %C(green)%cd %C(red)%GG %C(reset)%s" --date=local'
git config --global --add alias.lol 'log --graph --decorate --abbrev-commit --all --oneline'

git config --global rebase.autosquash true

dotpath=".."

copyfile() {
  if [ ! -f $1 ]; then
    echo "Could not find \"$1\""
  else
    echo "Copying \"$1\" to \"$2\""
    cp $1 $2
  fi
}

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    copyfile "${dotpath}/git/.gitignore_global" "${HOME}/.gitignore_global"
elif [[ "$OSTYPE" == "msys"* ]]; then
    # Windows
    copyfile "${dotpath}/git/.gitignore_global" "${HOME}/.gitignore_global"
else
    # Unknown.
    echo "Unknown OS - Missing config file copy commands."
fi
