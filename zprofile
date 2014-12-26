# chruby AUR package location
[ -f /usr/share/chruby/chruby.sh ] && source /usr/share/chruby/chruby.sh
[ -f /usr/share/chruby/auto.sh ] && source /usr/share/chruby/auto.sh

# chruby normal location
[ -f /usr/local/share/chruby/chruby.sh ] && source /usr/local/share/chruby/chruby.sh
[ -f /usr/local/share/chruby/auto.sh ] && source /usr/local/share/chruby/auto.sh

[ type rvm >/dev/null 2>&1 ] && echo "Could not load chruby"
