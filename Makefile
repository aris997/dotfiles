.PHONY: collect install \
	tmux-collect tmux-install \
	zsh-collect zsh-install \
	vim-collect vim-install \
	git-collect git-install \
	zed-collect zed-install \
	vscode-collect vscode-install

ifeq ($(shell uname),Darwin)
VSCODE_DIR := $(HOME)/Library/Application Support/Code/User
else
VSCODE_DIR := $(HOME)/.config/Code/User
endif

# home -> repo
collect: tmux-collect zsh-collect vim-collect git-collect zed-collect vscode-collect
# repo -> home
install: tmux-install zsh-install vim-install git-install zed-install vscode-install

tmux-collect:
	mkdir -p tmux
	cp ~/.tmux.conf tmux/.tmux.conf
tmux-install:
	cp tmux/.tmux.conf ~/.tmux.conf

zsh-collect:
	mkdir -p zsh/themes
	cp ~/.zshrc zsh/.zshrc
	cp ~/.oh-my-zsh/custom/themes/rivar.zsh-theme zsh/themes/
zsh-install:
	cp zsh/.zshrc ~/.zshrc
	cp zsh/themes/rivar.zsh-theme ~/.oh-my-zsh/custom/themes/

vim-collect:
	mkdir -p vim
	cp ~/.vimrc vim/.vimrc
vim-install:
	cp vim/.vimrc ~/.vimrc

git-collect:
	mkdir -p git
	cp ~/.gitconfig git/.gitconfig
	cp ~/.config/git/ignore git/ignore
git-install:
	mkdir -p ~/.config/git
	cp git/.gitconfig ~/.gitconfig
	cp git/ignore ~/.config/git/ignore

zed-collect:
	mkdir -p zed
	cp ~/.config/zed/settings.json ~/.config/zed/keymap.json zed/
zed-install:
	mkdir -p ~/.config/zed
	cp zed/settings.json zed/keymap.json ~/.config/zed/

vscode-collect:
	mkdir -p vscode
	cp "$(VSCODE_DIR)/settings.json" "$(VSCODE_DIR)/keybindings.json" vscode/
vscode-install:
	mkdir -p "$(VSCODE_DIR)"
	cp vscode/settings.json vscode/keybindings.json "$(VSCODE_DIR)/"
