#!/bin/bash
set -ex

_link_dotfiles() {
dots_private=( $(ls $1/../private/hidden/) )
dots_public=( $(ls $1/hidden/) )
echo dots_private
for f in "${dots_private[@]}"; do \
	ln -fs $1/../private/hidden/${f} ${HOME}/.${f}; done
for f in "${dots_public[@]}"; do \
	ln -fs $1/hidden/${f} ${HOME}/.${f}; done
ls -al ${HOME}
}

# Allows to call a function based on arguments passed to the script
$*