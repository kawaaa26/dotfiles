# dotfiles
![](https://github.com/odanado/dotfiles/workflows/macos-ci/badge.svg)


## Setup
```bash
$ git clone https://github.com/odanado/dotfiles
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