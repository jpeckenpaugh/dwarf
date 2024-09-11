#!/bin/bash

# Remove existing generated protobuf files to ensure a clean start
rm -f dwarf_grpc.pb.go dwarf.pb.go

# Generate new protobuf files based on the dwarf.proto definition
protoc --go_out=. --go-grpc_out=. --proto_path=. dwarf.proto

# Move generated files from nested directories to the current directory
mv github.com/LevInteractive/dwarf/pb/dwarf*.go .

# Remove the nested 'github.com' directory to clean up leftover directories
rm -R github.com

