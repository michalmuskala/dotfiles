# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Source .profile
test -e "${HOME}/.profile" && source "${HOME}/.profile"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration
alias e="$EDITOR"
alias se="sudo $EDITOR"
alias ec="$VISUAL"

# System completions
fpath+=(/usr/local/share/zsh-completions)

# Ruby
alias bundle-bootstrap="bundle install --binstubs=.bundle/bin --path=.bundle/gems"

export ERLANG_VERSION="20.0-rc2"
export ELIXIR_VERSION="master"

notify()
{
    command="$@"
    eval "$command"
    ret=$?
    if [ $ret != 0 ]; then
        terminal-notifier -title "Failed" -message "$command"
        return $ret
    else
        terminal-notifier -title "Done" -message "$command"
    fi
}

# Erlang
if [ -f /opt/erlang/"$ERLANG_VERSION"/activate ]; then
    source /opt/erlang/"$ERLANG_VERSION"/activate
else
    echo "No erlang installation found in /opt/erlang/$ERLANG_VERSION"
fi

# Elixir
if [ -f /opt/elixir/"$ELIXIR_VERSION"/activate ]; then
    source /opt/elixir/"$ELIXIR_VERSION"/activate
else
    echo "No elixir installation found in /opt/elixir/$ELIXIR_VERSION"
fi

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by travis gem
[ -f /Users/michalmuskala/.travis/travis.sh ] && source /Users/michalmuskala/.travis/travis.sh
