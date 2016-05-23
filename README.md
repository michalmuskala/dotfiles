# Dotfiles

To install use [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html)

* `git clone --recursive git@github.com:michalmuskala/dotfiles.git ~/dotfiles`
* `cd ~/dotfiles`
* `stow git`
* `stow emacs`
* `stow zsh`
* `stow ruby`
* `stow erlang`

To update

* `git pull --rebase`
* `git submodule update --init --recursive`
