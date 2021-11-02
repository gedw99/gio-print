GOGIO=gogio
GO_MOD_UPGRADE=go-mod-upgrade

print:
	@echo
	@echo GOGIO: $(shell which gogio)
	@echo GOGIO: $(shell which gogio)

dep-os:
	@echo
	@echo -- Installing gogio --
	go install gioui.org/cmd/gogio@latest
	@echo installed gogio at $(shell which $(GOGIO))

	@echo
	@echo -- Installing go-mod-upgrade --
	go install github.com/oligot/go-mod-upgrade@latest
	@echo installed go-mod-upgrade at : $(shell which $(GO_MOD_UPGRADE))

### MOD

mod-tidy:
	cd example && go mod tidy
	cd x && go mod tidy

mod-upgrade:
	cd example && $(GO_MOD_UPGRADE)
	cd x && $(GO_MOD_UPGRADE)


### EXAMPLE

example-tree-run:
	cd example/tree && go run .