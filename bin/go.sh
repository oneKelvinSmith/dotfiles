#! /bin/sh -x

version=1.9.4

echo "Installing go..."
asdf install golang $version
asdf global golang $version

packages=(
  github.com/golang/dep/cmd/dep
  github.com/motemen/gore
  github.com/nsf/gocode
  github.com/rogpeppe/godef
  golang.org/x/tools/cmd/goimports
  golang.org/x/tools/cmd/gorename
  golang.org/x/tools/cmd/guru
)

echo "Installing packages..."
go get -u -v ${packages[@]}
