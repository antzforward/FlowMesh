# Makefile 示例
BUILD_FLAGS := -ldflags "-X main.version=$(VERSION)"
PLATFORMS := linux/amd64,darwin/arm64,windows/amd64

.PHONY: build
build:
	@go build $(BUILD_FLAGS) -o bin/flowmesh ./cmd/flowmesh-cli
	@go build $(BUILD_FLAGS) -tags gui -o bin/flowmesh-gui ./cmd/flowmesh-gui

test:
	@go test -coverprofile=coverage.out ./...
	@go tool cover -html=coverage.out -o coverage.html

release:
	@goreleaser release --rm-dist