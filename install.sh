#
# Script that moves the config files to the different directories
#

# git
cp git/.gitconfig ~/

# vim
cp vim/.vimrc ~/.vimrc

# vscode
cp vscode/settings.json ~/.config/Code/User/
cat vscode/extensions.txt | xargs -L 1 code --install-extension

# zsh
cp zsh/.zshrc ~/.zshrc
