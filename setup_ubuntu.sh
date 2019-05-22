sudo apt-get update
sudo apt-get upgrade

# Install basic dependencies
sudo apt-get install zsh \
	      	 vim \
		     docker.io

sudo apt-get install powerline fonts-powerline

# Configure docker permissions
sudo groupadd docker
sudo usermod -aG docker $USER

# Install VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo usermod -s $(which zsh) $USER

# Run the install script
./install.sh
