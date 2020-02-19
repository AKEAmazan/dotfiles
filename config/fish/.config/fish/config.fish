# Alias
alias cr "composer require "
alias phpd "php -S localhost:8000 -ddisplay_errors=1 -dzend_extension=xdebug.so -dxdebug.remote_enable=1"
alias sy "php bin/console "
alias remove "pacaur -Rns"

# Fonctions 
function docker-clean --description "Drops unused and temporary images"
  docker kill (docker ps -q)
  docker rm (docker ps -a -q -f status=exited)
  docker rmi (docker images -q)
end

# Android
set -x EDITOR /usr/bin/vim
set -x TERM xterm
set -x ANDROID_HOME $HOME/.android
# set -x JAVA_HOME /usr/lib/jvm/java-8-jdk
# set -x PATH $PATH $JAVA_HOME/bin

# golang
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# Ruby
set -x PATH $PATH $HOME/.gem/ruby/2.4.0/bin

# NPM
set -x PATH $PATH $HOME/.npm-global/bin
rvm default

# PHP
set -x PATH $PATH $HOME/.config/composer/vendor/bin

# Neo4J
set -x PATH $PATH $HOME/.config/neo4j/bin
