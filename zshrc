# completion
autoload -U compinit
compinit

# use vim as an editor
export EDITOR=vim

# force load zprofile
source ~/.zprofile

# awesome cd movements from zshkit
export dirstacksize=5
setopt autocd
setopt autopushd pushdminus pushdsilent pushdtohome
setopt cdablevars

# Enable extended globbing
setopt extended_glob

# Configuration
for config_file (~/.zsh/*.zsh) source $config_file

# Plugins
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
