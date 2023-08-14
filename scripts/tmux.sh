checksupport() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "tmux is supported"
  elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "tmux is supported"
  else
    echo "tmux is not supported"
    exit 1
  fi
}

tmuxinstall() {
  if ! command -v tmux &>/dev/null; then
    echo "Installing tmux"
    if [[ "$OSTYPE" == "darwin"* ]]; then
      brew install tmux
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
      apt intall tmux
    fi
  else
    echo "tmux already installed"
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

dotpath=".."

checksupport

tmuxinstall

cleandir "${HOME}/.config/tmux"
copydir "${dotpath}/tmux/." "${HOME}/.config/tmux"
