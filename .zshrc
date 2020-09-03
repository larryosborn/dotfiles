
source ~/.config//antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle docker
antigen bundle git
antigen bundle npm
antigen bundle vscode
antigen bundle kubectl

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-autosuggestions


# Load the theme.
antigen theme simple

# Tell Antigen that you're done.
antigen apply