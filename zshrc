export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallifrey"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# NVM will append this to your bashrc file
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTNET_CLI_TELEMETRY_OPTOUT="true"
