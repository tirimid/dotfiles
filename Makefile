.PHONY: install

DOTFILES := \
	home/.aliases \
	home/.bashrc

install:
	cp $(DOTFILES) ~
