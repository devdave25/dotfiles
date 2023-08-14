echo "Installing"

sudo apt update
sudo apt upgrade

sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
git checkout stable
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
sudo make install
export PATH="$HOME/neovim/bin:$PATH"

# sudo make install
# cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

echo "Installed neovim"

sudo apt-get install python3-pip

# echo "Install NodeJS"

# sudo apt install -y curl
# curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
# sudo apt install -y nodejs

# dpkg: error processing archive nvim-linux64.deb (--install):
#  trying to overwrite '/usr/share/applications/nvim.desktop', which is also in package neovim-runtime 0.10.0~ubuntu1+git202306112018-bde59e814-9b397864c-ed59f0191~ubuntu22.04.1
# dpkg-deb: error: paste subprocess was killed by signal (Broken pipe)
# Errors were encountered while processing:
#  nvim-linux64.deb

# Uninstall
# sudo cmake --build build/ --target uninstall
