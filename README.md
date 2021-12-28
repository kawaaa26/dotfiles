# dotfiles
<img src="https://img.shields.io/badge/-Ansible-EE0000.svg?logo=ansible&style=plastic">
<img src="https://img.shields.io/badge/-Vim-019733.svg?logo=vim&style=plastic">

## Setup
```bash
$ git clone https://github.com/kawaaa26/dotfiles.git
$ cd dotfiles
$ ./setup.sh

$ rustup-init
```

### Alacritty SetUp
```bash
$ git clone https://github.com/alacritty/alacritty.git
$ cd alacritty
$ rustup update stable
$ rustup target add x86_64-apple-darwin aarch64-apple-darwin
$ make app-universal

$ curl -L raw.github.com/arks22/tmuximum/master/install.bash | bash

```
