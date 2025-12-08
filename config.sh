PWD=$(pwd)

# Set up global .gitconfig file
echo -n "Github email:"
read email
ln -sf $PWD/gitconfig ~/.gitconfig
git config --global user.email $email

# Set up nvim config
if [ -z $XDG_CONFIG_HOME ]; then
	ln -sf $PWD/nvim ~/.config/.
else
	ln -sf $PWD/nvim $XDG_CONFIG_HOME/.
fi
