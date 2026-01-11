PWD=$(pwd)

# Set up global .gitconfig file
echo -n "Github email:"
read email
cp $PWD/gitconfig.txt ~/.gitconfig
git config --global user.email $email

# Set up nvim config
if [ -z $XDG_CONFIG_HOME ]; then
	cp -r $PWD/nvim ~/.config/.
else
	cp -r $PWD/nvim $XDG_CONFIG_HOME/.
fi

cd $HOME
apt-get install -y curl zsh

# Install oh-my-zsh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p bin
echo 'export PATH="$PATH:$HOME/bin"' >> .zshrc
