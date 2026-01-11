apt-get install -y curl zsh npm clangd

# Set up global .gitconfig file
echo -n "Github email:"
read email
cp ./gitconfig.txt ~/.gitconfig
git config --global user.email $email

cd $HOME

# Install oh-my-zsh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p bin
mkdir -p Programs

# Set up nvim config
NVIM_BIN="nvim0.11.0"
wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.appimage -O $(NVIM_BIN)
chmod +x $(NVIM_BIN)
mv bin/ $(NVIM_BIN)
if [ -z $XDG_CONFIG_HOME ]; then
	cp -r ./nvim ~/.config/.
else
	cp -r ./nvim $XDG_CONFIG_HOME/.
fi
npm install -g tree-sitter-cli
