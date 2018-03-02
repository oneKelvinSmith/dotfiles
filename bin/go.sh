#! /bin/sh -x

version=1.9.4

echo "Installing go..."
asdf install golang $version
asdf global golang $version

packages=(
  github.com/acroca/go-symbols 
  github.com/alecthomas/gometalinter
  github.com/cweill/gotests
  github.com/davidrjenni/reftools/cmd/fillstruct 
  github.com/derekparker/delve/cmd/dlv
  github.com/dominikh/go-tools/cmd/keyify
  github.com/fatih/gomodifytags
  github.com/fatih/motion
  github.com/golang/dep/cmd/dep
  github.com/golang/lint/golint 
  github.com/haya14busa/goplay/cmd/goplay 
  github.com/josharian/impl 
  github.com/jstemmer/gotags
  github.com/kisielk/errcheck
  github.com/klauspost/asmfmt/cmd/asmfmt
  github.com/motemen/gore
  github.com/nsf/gocode
  github.com/ramya-rao-a/go-outline 
  github.com/rogpeppe/godef 
  github.com/uudashr/gopkgs/cmd/gopkgs 
  github.com/zmb3/gogetdoc
  golang.org/x/tools/cmd/godoc 
  golang.org/x/tools/cmd/goimports
  golang.org/x/tools/cmd/gorename 
  golang.org/x/tools/cmd/guru 
  sourcegraph.com/sqs/goreturns 
)

echo "Installing packages..."
go get -u -v ${packages[@]}
