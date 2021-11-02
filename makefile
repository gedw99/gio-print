GOGIO=gogio

print:
	@echo
	@echo GOGIO: $(shell which gogio)

dep-os:
	@echo gogio being installed to the GO BIN
	go install gioui.org/cmd/gogio@latest
	@echo gogio installed at $(shell which gogio)

git-commit:
	git add all

git push: