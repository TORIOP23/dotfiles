eval "$(/usr/local/bin/brew shellenv)"

export LANG=en_US.UTF-8

export PATH=/Applications/XAMPP/xamppfiles/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/$USER/Downloads/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$USER/Downloads/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/$USER/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$USER/Downloads/google-cloud-sdk/completion.zsh.inc"; fi
