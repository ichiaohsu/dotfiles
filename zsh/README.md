# Complete the terminal
## Setup zsh
### install zsh
```bash
brew install zsh
```
Set `zsh` to default terminal:
```bash
sudo sh -c "echo $(which zsh) >> /etc/shells" 
chsh -s $(which zsh)
```

### install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install powerline fonts
Powerline fonts are used for special symbols used in themes. We could install with `brew`

`Sauce Code Pro Nerd Font Complete` is recommended.
```bash
brew tap homebrew/cask-fonts

brew cask install font-sourcecodepro-nerd-font
```

Set the Fonts in **Preferences** > **Profiles** > **Text** > **Fonts**, and your zsh could show special character now.

### Setup theme

### Install powerlevel9k
```bash
brew tap sambadevi/powerlevel9k

brew install powerlevel9k
```

Set below line in `.zshrc`:
```vim
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
```

## Install Applications
From now on, we are installing CLI to manipulate third-party resources.

### Languages

#### Python
We're using `pyenv` to manage python version, and `pipenv` to manage pacakge and virtual environment.

1. Install `pyenv`
```bash
TODO
```
2. Installing `pipenv`
```bash
TODO
```

#### Golang

#### Node.js
Use `n` to manage version of Node.js.

1. Make a folder to put `n`, and subsequent node executives:
```bash
mkdir -p ~/.local
```

Here `~/.local` is the compatible path as the way we setup `pyenv`

2. Install `n`
We're going to put `n` in our customize path `~/.local/bin`, just as `pyenv`. 

Clone the repo `tj/n`, `cd` to the folder, and type follow:
```bash
PREFIX=~/.local/bin make install
```

3. Set `N_PREFIX` to make n install to custom path

In this way we don't have to modify ownership of `/usr/local/bin`, or use `sudo` permission.

```bash
export N_PREFIX=~/.local
```

### Kubernetes

1. K9s
`K9s` provides a curses based terminal UI to interact with your Kubernetes clusters.
```bash
brew install derailed/k9s/k9s
```

2. kubectx
`kubectx` is a CLI to switch between kubectl contexts.
```bash
brew install kubectx
```

if you're using interactive menu with `kubectx`, you have to install `fzf`:
```bash
brew install fzf
```
