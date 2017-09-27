#!/usr/bin/env bash

go run $(ls -1 *.go | grep -v _test.go)