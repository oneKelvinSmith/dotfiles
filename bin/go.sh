#! /bin/sh -x

version=1.10

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

linters=(
    github.com/GoASTScanner/gas
    github.com/alecthomas/gocyclo
    github.com/alexkohler/nakedret
    github.com/client9/misspell/cmd/misspell
    github.com/dnephin/govet
    github.com/golang/lint/golint
    github.com/gordonklaus/ineffassign
    github.com/jgautheron/goconst/cmd/goconst
    github.com/kisielk/errcheck
    github.com/mdempsky/maligned
    github.com/mdempsky/unconvert
    github.com/mibk/dupl
    github.com/opennota/check/cmd/structcheck
    github.com/opennota/check/cmd/varcheck
    github.com/stripe/safesql
    github.com/tsenart/deadcode
    github.com/walle/lll/cmd/lll
    golang.org/x/tools/cmd/goimports
    golang.org/x/tools/cmd/gotype
    honnef.co/go/tools/cmd/gosimple
    honnef.co/go/tools/cmd/megacheck
    honnef.co/go/tools/cmd/staticcheck
    honnef.co/go/tools/cmd/unused
    mvdan.cc/interfacer
    mvdan.cc/unparam
)

echo "Installing packages..."
go get -u -v ${packages[@]}
go get -u -v ${linters[@]}
