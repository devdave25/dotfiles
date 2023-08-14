# Pulls config files -> dotfiles repo.

dotpath=".."

copyfile() {
  if [ ! -f $1 ]; then
    echo "Could not find \"$1\""
  else
    echo "Copying \"$1\" to \"$2\""
    cp $1 $2
  fi
}

copydir() {
  if [ ! -d $1 ]; then
    echo "Could not find \"$1\""
  else
    echo "Copying \"$1\" to \"$2\""
    cp -a $1 $2
  fi
}

cleandir() {
  if [ ! -d $1 ]; then
    echo "Could not find \"$1\""
  else
    echo "Cleaning \"$1\""
    rm -rf $1
  fi
}

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Mac OSX
  copydir "${HOME}/.config/nvim/." "${dotpath}/nvim/."
  copydir "${HOME}/.config/tmux/." "${dotpath}/tmux/."

  cleandir "${dotpath}/tmux/plugins"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux
  copydir "${HOME}/.config/nvim/." "${dotpath}/nvim/."
  copydir "${HOME}/.config/tmux/." "${dotpath}/tmux/."

  cleandir "${dotpath}/tmux/plugins"
elif [[ "$OSTYPE" == "msys"* ]]; then
  # Windows
  copydir "${LOCALAPPDATA}/nvim/." "${dotpath}/nvim/."
else
  # Unknown.
  echo "Unknown OS - Missing config file copy commands."
fi
