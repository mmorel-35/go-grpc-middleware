# Auto generated binary variables helper managed by https://github.com/bwplotka/bingo v0.9. DO NOT EDIT.
# All tools are designed to be build inside $GOBIN.
BINGO_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
GOPATH ?= $(shell go env GOPATH)
GOBIN  ?= $(firstword $(subst :, ,${GOPATH}))/bin
GO     ?= $(shell which go)

# bingo_ver extracts the pinned version from a bingo .mod file so that the
# binary name always matches the declared dependency without requiring edits to
# this file on every version bump.
# Usage: $(call bingo_ver,<tool-name>)  e.g. $(call bingo_ver,golangci-lint)
bingo_ver = $(or $(shell grep '^require' $(BINGO_DIR)/$1.mod 2>/dev/null | awk '{print $$3}'),$(error bingo_ver: cannot extract version from $(BINGO_DIR)/$1.mod))

# Below generated variables ensure that every time a tool under each variable is invoked, the correct version
# will be used; reinstalling only if needed.
# For example for bingo variable:
#
# In your main Makefile (for non array binaries):
#
#include .bingo/Variables.mk # Assuming -dir was set to .bingo .
#
#command: $(BINGO)
#	@echo "Running bingo"
#	@$(BINGO) <flags/args..>
#
BINGO := $(GOBIN)/bingo-$(call bingo_ver,bingo)
$(BINGO): $(BINGO_DIR)/bingo.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(BINGO)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=bingo.mod -o=$(BINGO) "github.com/bwplotka/bingo"

BUF := $(GOBIN)/buf-$(call bingo_ver,buf)
$(BUF): $(BINGO_DIR)/buf.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(BUF)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=buf.mod -o=$(BUF) "github.com/bufbuild/buf/cmd/buf"

COPYRIGHT := $(GOBIN)/copyright-$(call bingo_ver,copyright)
$(COPYRIGHT): $(BINGO_DIR)/copyright.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(COPYRIGHT)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=copyright.mod -o=$(COPYRIGHT) "github.com/efficientgo/tools/copyright"

GOIMPORTS := $(GOBIN)/goimports-$(call bingo_ver,goimports)
$(GOIMPORTS): $(BINGO_DIR)/goimports.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOIMPORTS)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=goimports.mod -o=$(GOIMPORTS) "golang.org/x/tools/cmd/goimports"

GOLANGCI_LINT := $(GOBIN)/golangci-lint-$(call bingo_ver,golangci-lint)
$(GOLANGCI_LINT): $(BINGO_DIR)/golangci-lint.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOLANGCI_LINT)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=golangci-lint.mod -o=$(GOLANGCI_LINT) "github.com/golangci/golangci-lint/v2/cmd/golangci-lint"

MDOX := $(GOBIN)/mdox-$(call bingo_ver,mdox)
$(MDOX): $(BINGO_DIR)/mdox.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(MDOX)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=mdox.mod -o=$(MDOX) "github.com/bwplotka/mdox"

MISSPELL := $(GOBIN)/misspell-$(call bingo_ver,misspell)
$(MISSPELL): $(BINGO_DIR)/misspell.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(MISSPELL)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=misspell.mod -o=$(MISSPELL) "github.com/client9/misspell/cmd/misspell"

PROTOC_GEN_GO_GRPC := $(GOBIN)/protoc-gen-go-grpc-$(call bingo_ver,protoc-gen-go-grpc)
$(PROTOC_GEN_GO_GRPC): $(BINGO_DIR)/protoc-gen-go-grpc.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(PROTOC_GEN_GO_GRPC)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=protoc-gen-go-grpc.mod -o=$(PROTOC_GEN_GO_GRPC) "google.golang.org/grpc/cmd/protoc-gen-go-grpc"

PROTOC_GEN_GO := $(GOBIN)/protoc-gen-go-$(call bingo_ver,protoc-gen-go)
$(PROTOC_GEN_GO): $(BINGO_DIR)/protoc-gen-go.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(PROTOC_GEN_GO)"
	@cd $(BINGO_DIR) && GOWORK=off $(GO) build -mod=mod -modfile=protoc-gen-go.mod -o=$(PROTOC_GEN_GO) "google.golang.org/protobuf/cmd/protoc-gen-go"

