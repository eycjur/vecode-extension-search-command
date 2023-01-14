all: install compile build install-extension

.PHONY: install
install:
	yarn install --frozen-lockfile

.PHONY: compile
compile:
	yarn compile

.PHONY: build
build:
	yarn vscode:prepublish

.PHONY: install-extension
install-extension:
	code --install-extension search-command-0.0.1.vsix