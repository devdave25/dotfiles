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

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    copydir "${dotpath}/nvim/." "${HOME}/.config/nvim"
else
    # Unknown.
    copydir "${dotpath}/nvim/." "${LOCALAPPDATA}/.config/nvim"
fi
