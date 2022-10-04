
# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/Users/tqin5/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-multiline'
export POWERLINE_LEFT_PROMPT="scm python_venv ruby cwd"
export POWERLINE_RIGHT_PROMPT="in_vim clock battery user_info"
export POWERLINE_PADDING=3

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Set up proxy
# bash-it enable plugin proxy
export BASH_IT_HTTP_PROXY="http://proxy.bloomberg.com:81"
export BASH_IT_HTTPS_PROXY="http://proxy.bloomberg.com:81"

# export http_proxy=http://localhost:8888
# export https_proxy=http://localhost:8888

# Load Bash It
source "$BASH_IT"/bash_it.sh

# Set up python environment
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
	# pyenv shell 2.7.10 # this is to avoid error python2 command not exist
fi
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV=true

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV=true

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

export JAVA_HOME=/Library/java/JavaVirtualMachines/adoptopenjdk-8.jdk/contents/Home/
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.6/libexec
export PATH=/usr/local/Cellar/apache-spark/2.4.6/bin:$PATH
export PYSPARK_PYTHON=/Users/tqin5/.pyenv/shims/python3
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='lab'

export NEO4J_HOME=/Users/tqin5/Library/Application\ Support/Neo4j\ Desktop/Application/neo4jDatabases/database-20fb4709-47d8-4bca-b755-21e103765082/installation-4.0.3/
export PATH="$NEO4J_HOME/bin:$PATH"
export NEO4J_USERNAME='neo4j'
export NEO4J_PASSWORD='password'

# For compilers to find openssl@1.1 you may need to set:
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# For pkg-config to find openssl@1.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# Proxy settings
export HTTP_PROXY=http://proxy.bloomberg.com:81
export http_proxy=$HTTP_PROXY
export HTTPS_PROXY=http://proxy.bloomberg.com:81
export https_proxy=$HTTPS_PROXY
export NO_PROXY=localhost,.dev.bloomberg.com,.dev.blpprofessional.com,.bcpc.bloomberg.com
export no_proxy=$NO_PROXY
