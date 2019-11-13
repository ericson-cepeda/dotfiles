.SHELL=bash

DIR := $(shell cd "$(dirname "$0" | echo '')" && pwd)
LINK := $(shell readlink Makefile)
DIR_LINK_AUX := ${DIR}/$(shell dirname ${LINK})
DIR_LINK := $(if ${DIR},${DIR_LINK_AUX:/=},${LINK})
DIR_LINK_FUNC := ${DIR_LINK}/make_func.sh

all: config install-fonts install-neobundle

all-osx: osx config config-osx link-dotfiles nvim vim-plug fonts

osx:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || true
	brew install python
	sudo easy_install pip
	brew install ruby fzf zsh tmux

nvim-ubuntu:
	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt-get install neovim

nvim:
	#pip install -U neovim
	# https://github.com/neovim/neovim/issues/8202
	pip3 install -U neovim
	$(shell mkdir -p ${XDG_CONFIG_HOME:=${HOME}/.config})
	ln -s ~/.vim ${XDG_CONFIG_HOME:=${HOME}}/.config/nvim
	ln -s ~/.vimrc ${XDG_CONFIG_HOME:=${HOME}}/.config/nvim/init.vim

config-osx:
	brew install ncurses ctags vim neovim ag getantibody/tap/antibody
	sudo gem install curses

config-ubuntu:
	sudo apt-get install -y ruby ruby-dev build-essential vim libncurses-dev make git-core tmux exuberant-ctags zsh
	sudo gem install curses

fzf-manual:
	git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf || true
	${HOME}/.fzf/install

config:
	# %sudo	ALL=(ALL) NOPASSWD:ALL
	sudo chsh -s "$(shell command -v zsh)" "${USER}" || sudo usermod -s "$(shell command -v zsh)" "${USER}"
	sudo chsh -s $(shell which zsh) || sudo usermod -s $(shell which zsh)
	# tmux plugins
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

config-oh-my-zsh:
	# ZSH plugins
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

neobundle:
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install-neobundle.sh
	sh ./install-neobundle.sh
	vim +NeoBundleInstall

vim-plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim +PlugInstall

fonts:
	git clone https://github.com/powerline/fonts.git powerline-fonts | true
	sh powerline-fonts/install.sh
	mkdir -p ~/.local/share/fonts
	cd ~/.local/share/fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://github.com/ryanoasis/nerd-fonts/raw/0.5.1/patched-fonts/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types.otf

install-xubuntu:
	sudo apt-get install xubuntu-desktop gksu leafpad synaptic

install-osx-kube:
	brew install kubectl kubectx

link-dotfiles:
	@echo ${DIR_LINK}
	${DIR_LINK_FUNC} _link_dotfiles ${DIR_LINK}
