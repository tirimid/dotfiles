.PHONY: install

DOTFILES := \
	home/.aliases \
	home/.bashrc \
	home/.inputrc \
	home/.zshrc

install:
	cp $(DOTFILES) ~
