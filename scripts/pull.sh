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
    copydir "${HOME}/.config/nvim/." "${dotpath}/nvim/." 
elif [[ "$OSTYPE" == "msys"* ]]; then
    # Windows
    copydir "${LOCALAPPDATA}/nvim/." "${dotpath}/nvim/."
else
    # Unknown.
    echo "Unknown OS - Missing config file copy commands."
fi