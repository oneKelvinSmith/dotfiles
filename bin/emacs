#!/bin/sh

if [ -e '/Applications/Emacs.app' ]; then
  echo $@ | xargs touch; open -a /Applications/Emacs.app $@
else
  vim -No $@
fi
