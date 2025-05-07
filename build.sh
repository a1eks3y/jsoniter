#!/bin/bash
set -e
set -x

if [ ! -d /tmp/build-golang/src/github.com/a1eks3y/jsoniter ]; then
    mkdir -p /tmp/build-golang/src/github.com/a1eks3y/jsoniter
    ln -s $PWD /tmp/build-golang/src/github.com/a1eks3y/jsoniter
fi
export GOPATH=/tmp/build-golang
go get -u github.com/golang/dep/cmd/dep
cd /tmp/build-golang/src/github.com/a1eks3y/jsoniter
exec $GOPATH/bin/dep ensure -update
