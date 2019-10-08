# Complete the terminal

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
mkdir ~/.n
```
2. Set `N_PREFIX` to make n install to custom path

In this way we don't have to modify ownership of `/usr/local/bin`, or use `sudo` permission.

```bash
export N_PREFIX=~/.n
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
