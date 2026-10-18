BINARY  := qw2
BIN_DIR := bin

.PHONY: build test lint fmt vuln check clean

build:
	go build -o $(BIN_DIR)/$(BINARY) ./cmd/$(BINARY)

test:
	go test -race ./...

lint:
	golangci-lint run

fmt:
	golangci-lint fmt

vuln:
	govulncheck ./...

check: lint test vuln

clean:
	rm -rf $(BIN_DIR)
