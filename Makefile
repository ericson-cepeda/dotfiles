#!/bin/bash
SHELL := /bin/bash

all: config install-fonts install-neobundle

config-nvim-osx:
	brew install python --framework
	sudo easy_install pip

config-nvim-ubuntu:
	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt-get install neovim

config-nvim:
	pip install neovim
	mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
	ln -s ~/.vim $XDG_CONFIG_HOME/nvim
	ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

config-osx:
        # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install ruby fzf zsh
	/usr/local/bin/gem install curses

config-ubuntu:
	sudo apt-get install -y ruby ruby-dev build-essential vim libncurses-dev make git-core tmux exuberant-ctags zsh
	sudo gem install curses
	git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf || true
	${HOME}/.fzf/install

config:
	# %sudo	ALL=(ALL) NOPASSWD:ALL
	cd ~
	#wget https://gist.githubusercontent.com/ericson-cepeda/41643edff07dd07d66d1/raw/.vimrc -O .vimrc
	#wget https://gist.githubusercontent.com/ericson-cepeda/41643edff07dd07d66d1/raw/.tmux.conf -O .tmux.conf
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	#wget https://gist.githubusercontent.com/ericson-cepeda/41643edff07dd07d66d1/raw/.zshrc -O .zshrc
	sudo chsh -s "$(command -v zsh)" "${USER}" || sudo usermod -s "$(command -v zsh)" "${USER}"
	sudo chsh -s $(which zsh) || sudo usermod -s $(which zsh)

install-neobundle:
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install-neobundle.sh
	sh ./install-neobundle.sh
	vim +NeoBundleInstall

install-fonts:
	git clone https://github.com/powerline/fonts.git powerline-fonts | true
	sh powerline-fonts/install.sh
	mkdir -p ~/.local/share/fonts
	cd ~/.local/share/fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://github.com/ryanoasis/nerd-fonts/raw/0.5.1/patched-fonts/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types.otf

install-xubuntu:
	sudo apt-get install xubuntu-desktop gksu leafpad synaptic

link-dotfiles:
	dots_private=( $(ls -A ${HOME}/.dotfiles/private/) )
	dots_public=( $(ls -A ${HOME}/.dotfiles/public/) )
	for f in "${dots_private[@]}"; do ln -fs ${HOME}/.dotfiles/private/$f ${HOME}/; done && \
	for f in "${dots_public[@]}"; do ln -fs ${HOME}/.dotfiles/public/$f ${HOME}/; done && ls -al ${HOME}
