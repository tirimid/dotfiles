.PHONY: install

DOTFILES := \
	home/.aliases \
	home/.bashrc \
	home/.fbtermrc \
	home/.inputrc \
	home/.tmux.conf \
	home/.zshrc

install:
	cp $(DOTFILES) ~
