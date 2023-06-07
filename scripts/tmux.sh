
checksupport() {
    if [[ ! "$OSTYPE" == "darwin"* ]]; then
        echo "tmux not supported"
        exit 1;
    fi
}

tmuxinstall() {
    if ! command -v tmux &> /dev/null; then
        brew install tmux
    else
        echo "tmux already installed"
    fi
}

tpminstall() {
    plugins_dir="$HOME/.tmux/plugins/tpm"

    if [ ! -d ${plugins_dir} ]; then
        git clone https://github.com/tmux-plugins/tpm ${plugins_dir}
    else
        echo "tpm already installed"
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
tpminstall

cleandir "${HOME}/.config/tmux"
copydir "${dotpath}/tmux/." "${HOME}/.config/tmux"
