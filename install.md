# clone dotfiles
```
$ git clone https://github.com/oneKelvinSmith/dotfiles.git .dotfiles
```

# install system binaries including rbenv & rcm
```
$ .dotfiles/bin/brew.sh
```

# symlink dotfiles and run rcm hooks
```
$ rcup
```

# install node and system packages
```
$ .dotfiles/bin/node.sh
```

# install ruby and system gems
```
$ .dotfiles/bin/ruby.sh
```

# install apps
```
$ .dotfiles/bin/cask.sh
```

# these should be dealt with by `rcm` hooks

* install nvm (not supported on homebrew...)
```
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
```

* install oh-my-fish for plugins (nvm) and themes
```
$ curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
```

* install spacemacs for the best of both worlds
```
$ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

# add custom shells to /etc/shells & use fish shell
```
$ echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
$ echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
$ echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
$ chsh -s /usr/local/bin/fish
```
