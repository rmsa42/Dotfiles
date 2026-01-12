DOTFILES=$(pwd)
BIN="$HOME/bin"
PROGRAMS="$HOME/Programs"
CONFIG="$HOME/.config"

sudo apt-get install -y curl zsh npm clangd
mkdir -p $BIN
mkdir -p $PROGRAMS
mkdir -p $CONFIG

# Set up global .gitconfig file
GITCONFIG_FILE="$HOME/.gitconfig"
echo "Setup gitconfig"
echo -n "Github email: "
read email
cp ./gitconfig.txt $GITCONFIG_FILE
git config --global user.email $email

# Set up nvim config
NVIM_TAR="$NVIM.tar.gz"
if [[ ! -a $NVIM_BIN ]]; then
	echo "Setup nvim"
	wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz -O $NVIM_TAR
	tar -xvzf $NVIM_TAR -C $PROGRAMS
	ln -sf $PROGRAMS/nvim/bin/nvim $BIN/nvim
	rm -rf $NVIM_TAR
	if [ -z $XDG_CONFIG_HOME ]; then
		cp -r $DOTFILES/nvim $CONFIG
	else
		cp -r $DOTFILES/nvim $XDG_CONFIG_HOME/.
	fi
fi
sudo npm install -g tree-sitter-cli

cd $HOME

# Install oh-my-zsh via curl
echo "Setup oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
