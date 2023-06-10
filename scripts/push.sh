# Pushes dotfiles repo -> config files.

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

    cleandir "${HOME}/.config/nvim"
    copydir "${dotpath}/nvim/." "${HOME}/.config/nvim"
elif [[ "$OSTYPE" == "msys"* ]]; then
    # Windows

    cleandir "${LOCALAPPDATA}/nvim"
    copydir "${dotpath}/nvim/." "${LOCALAPPDATA}/nvim"
else
    # Unknown.
    echo "Unknown OS - Missing config file copy commands."
fi
