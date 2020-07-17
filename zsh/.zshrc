# Source original bashrc
source ~/.bashrc &> /dev/null

# Set up gpg
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye

# zsh
export ZSH="~/.oh-my-zsh"
# Using agnoster
ZSH_THEME="agnoster"

# Define plugins
plugins=(git)

# Make the magic happen
source $ZSH/oh-my-zsh.sh

# Add android-studio to shell
#export PATH="$PATH:/opt/android-studio/bin"
#export PATH="$PATH:/home/edouard/.dotnet/tools"
#export MSBuildSDKsPath=/opt/dotnet/sdk/$(dotnet --version)/Sdks

# Add autocomplete plugin
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffffff,bg=blue,bold,underline"
