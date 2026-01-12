DOTFILES=$(pwd)
BIN="$HOME/bin"

sudo apt-get install -y curl zsh npm clangd
mkdir -p $BIN
mkdir -p $HOME/Programs

# Set up global .gitconfig file
GITCONFIG_FILE="$HOME/.gitconfig"
echo "Setup gitconfig"
echo -n "Github email: "
read email
cp ./gitconfig.txt $GITCONFIG_FILE
git config --global user.email $email

# Set up nvim config
NVIM_BIN="$BIN/nvim"
if [[ ! -a $NVIM_BIN ]]; then
	echo "Setup nvim"
	wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.appimage -O $NVIM_BIN
	chmod +x $NVIM_BIN
	if [ -z $XDG_CONFIG_HOME ]; then
		cp -r $DOTFILES/nvim ~/.config/.
	else
		cp -r $DOTFILES/nvim $XDG_CONFIG_HOME/.
	fi
fi
sudo npm install -g tree-sitter-cli

cd $HOME

# Install oh-my-zsh via curl
echo "Setup oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
