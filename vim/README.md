# Setting on a new machine

- Prerequisite: vim >= 8.0

1. Install Vim

Use `brew` to install `vim` could avoid the error trying to change `/usr/bin`.

```bash
brew install vim
```
The new brew formula has included python3 support by default. So there is no need to denote extra `--with-python3` for install right now.

2. Install Vundle

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Copy `.vimrc` under the user folder

```bash
cp .vimrc ~/.vimrc
```

4. Install plugins

open vim and run `:PluginInstall`