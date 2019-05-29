# Source original bashrc
source ~/.bashrc &> /dev/null

# Set up gpg
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye

# zsh
export ZSH="/home/$USER/.oh-my-zsh"
# Using agnoster
ZSH_THEME="agnoster"

# Define plugins
plugins=(git)

# Make the magic happen
source $ZSH/oh-my-zsh.sh


