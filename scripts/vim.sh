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

dotpath=".."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    if [ ! command -v neovim &> /dev/null ]; then
        brew install neovim
    else
        echo "neovim already installed"
    fi

    cleandir "${HOME}/.config/nvim"
    copydir "${dotpath}/nvim/." "${HOME}/.config/nvim"
elif [[ "$OSTYPE" == "msys"* ]]; then
    # Windows
    if [ ! command -v neovim &> /dev/null ]; then
        choco install neovim -y
    else
        echo "neovim already installed"
    fi

    cleandir "${LOCALAPPDATA}/nvim"
    copydir "${dotpath}/nvim/." "${LOCALAPPDATA}/nvim"
else
    # Unknown.
    echo "Unknown OS - Missing config file copy commands."
fi
