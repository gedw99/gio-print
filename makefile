# https://github.com/gedw99/gio-print

.DEFAULT_GOAL := all

MAKE_FSPATH=$(PWD)/.make

include $(MAKE_FSPATH)/go.mk
include $(MAKE_FSPATH)/gio.mk
include $(MAKE_FSPATH)/mob.mk
include $(MAKE_FSPATH)/help.mk

GO_SRC_NAME=gio-print
GO_SRC_FSPATH=$(PWD)

GIO_SRC_NAME=gio-print
GIO_SRC_FSPATH=$(PWD)

BIN_FSPATH=$(PWD)/bin

all: build

## Runs build in CI. See build.yaml.
build-ci: build

## Runs build locally.
build: dep-os print example-tree-all

## Runs release on CI. See release.yaml.
release-ci:

## Runs release locally.
release:

## Runs tests locally. See test.yaml.
test-ci:

## Runs tests locally.
test:




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
	

mod-upgrade:
	cd example/tree && $(GO_MOD_UPGRADE)
	cd example/tree-cli && $(GO_MOD_UPGRADE)
	cd x && $(GO_MOD_UPGRADE)


### EXAMPLES

example-tree-all: example-tree-mod example-tree-print example-tree-build

example-tree-print:
	$(MAKE) GO_SRC_NAME=tree GO_SRC_FSPATH=$(PWD)/example/tree go-print

example-tree-mod:
	$(MAKE) GO_SRC_NAME=tree GO_SRC_FSPATH=$(PWD)/example/tree go-mod-upgrade

example-tree-build:
	$(MAKE) GO_SRC_NAME=tree GO_SRC_FSPATH=$(PWD)/example/tree go-build

example-tree-run: example-tree-build
	$(MAKE) GO_SRC_NAME=tree GO_SRC_FSPATH=$(PWD)/example/tree go-run


example-treecli-run:
	cd example/tree-cli && go run .

example-treecli-run-completion:
	cd example/tree-cli && go run . completion

example-treecli-run-config-open:
	open $(HOME)/.tree-cli.yaml