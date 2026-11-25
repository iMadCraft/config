.POSIX:

RSYNC = rsync

LOCALSTATEDIR = $(HOME)/.local/config

TRACKED_FILES = \
	$(HOME)/.bashrc \
	$(HOME)/.tmux.conf \
	$(HOME)/.gitconfig \
	$(HOME)/.screenrc \
	$(HOME)/.vimrc

FILES = \
	src/main/conf/.vimrc \
	src/main/conf/.bashrc \
	src/main/conf/.screenrc \
	src/main/conf/.tmux.conf \
	src/main/conf/.gitconfig

BASHRC_DIR = $(HOME)/.bashrc.d

BASHRC_FILES = \
	$(BASHRC_DIR)/01_default \
	$(BASHRC_DIR)/02_alias \
	$(BASHRC_DIR)/03_macos

DIRS =  $(BASHRC_DIR)

help:
	@echo "Usage: make <install|update>"

install: $(TRACKED_FILES) $(BASHRC_FILES) \
			install-nvim

$(HOME)/.vimrc: 		src/main/conf/.vimrc
$(HOME)/.bashrc: 		src/main/conf/.bashrc
$(HOME)/.screenrc: 	src/main/conf/.screenrc
$(HOME)/.tmux.conf:	src/main/conf/.tmux.conf
$(HOME)/.gitconfig: 	src/main/conf/.gitconfig
$(BASHRC_DIR)/01_default: src/bashrc/conf/default
$(BASHRC_DIR)/02_alias:   src/bashrc/conf/alias
$(BASHRC_DIR)/03_macos:   src/bashrc/conf/macos
$(TRACKED_FILES) $(BASHRC_FILES):
	cp $(<) $(@)

install-%:
	$(RSYNC) -au src/$(*)/config/ $(HOME)/.config/$(*)

update: update-nvim
	cp $(HOME)/.vimrc 		src/main/conf/.vimrc
	cp $(HOME)/.bashrc 		src/main/conf/.bashrc
	cp $(HOME)/.screenrc 	src/main/conf/.screenrc
	cp $(HOME)/.tmux.conf	src/main/conf/.tmux.conf
	cp $(HOME)/.gitconfig 	src/main/conf/.gitconfig

update-%:
	$(RSYNC) -au $(LOCALSTATEDIR)/$(*)/ src/$(*)/config 

$(DIRS):
	mkdir -p $(@)

.PHONY: install install-* update update-*
