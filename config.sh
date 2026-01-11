sudo apt-get install -y curl zsh npm clangd
mkdir -p bin
mkdir -p Programs

# Set up global .gitconfig file
GITCONFIG_FILE="$HOME/.gitconfig"
echo "Setup gitconfig"
echo -n "Github email: "
read email
cp ./gitconfig.txt $GITCONFIG_FILE
git config --global user.email $email

cd $HOME

# Set up nvim config
BIN="$HOME/bin"
NVIM_BIN="nvim0.11.0"
if [[ ! -a $BIN ]]; then
	echo "Setup nvim"
	wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.appimage -O $(NVIM_BIN)
	chmod +x $(NVIM_BIN)
	mv $BIN $(NVIM_BIN)
	if [ -z $XDG_CONFIG_HOME ]; then
		cp -r ./nvim ~/.config/.
	else
		cp -r ./nvim $XDG_CONFIG_HOME/.
	fi
fi
npm install -g tree-sitter-cli

# Install oh-my-zsh via curl
echo "Setup oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
