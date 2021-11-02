
MAKE_FSPATH=$(PWD)/.make
include $(MAKE_FSPATH)/help.mk
include $(MAKE_FSPATH)/go.mk
include $(MAKE_FSPATH)/gio.mk
include $(MAKE_FSPATH)/mob.mk

GO_SRC_NAME=gio-print
GO_SRC_FSPATH=$(PWD)

GIO_SRC_NAME=gio-print
GIO_SRC_FSPATH=$(PWD)

BIN_FSPATH=$(PWD)/bin


all-ci: dep-os print

all: dep-os print

print:
	$(MAKE) go-print
	$(MAKE) gio-print

	@echo
	@echo -- BIN --
	@echo BIN_FSPATH: $(BIN_FSPATH)
	@echo BIN: $(BIN)

dep-os:
	$(MAKE) go-dep
	$(MAKE) gio-dep
	

### MOD

mod-tidy:
	cd example/tree && go mod tidy
	cd example/tree-cli && go mod tidy

	cd x && go mod tidy

mod-upgrade:
	cd example/tree && $(GO_MOD_UPGRADE)
	cd example/tree-cli && $(GO_MOD_UPGRADE)
	cd x && $(GO_MOD_UPGRADE)


### EXAMPLES

example-tree-build:
	BIN=$(BIN_FSPATH)/tree
	@echo BIN: $(BIN)
	cd example/tree && go build -o $(BIN) .
	./$(BIN)

example-tree-run:
	cd example/tree && go run .

example-treecli-run:
	cd example/tree-cli && go run .

example-treecli-run-completion:
	cd example/tree-cli && go run . completion

example-treecli-run-config-open:
	open $(HOME)/.tree-cli.yaml