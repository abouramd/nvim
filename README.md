## Quickstart
To get started, first clone this repository to somewhere on your `packpath`, e.g.:


> Install from download
<ul>
<li>Latest <a href="https://github.com/neovim/neovim/releases/latest">stable release</a>
<ul>
<li><a href="https://github.com/neovim/neovim/releases/latest/download/nvim-macos.tar.gz">macOS</a></li>
<li><a href="https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz">Linux</a></li>
<li><a href="https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi">Windows</a></li>
</ul>
</li>
<li>Latest <a href="https://github.com/neovim/neovim/releases/nightly">development prerelease</a>
</li>
</ul>

> setup

```shell
mkdir -p ~/.vim/undodir/ #to save the history.
git clone git@github.com:abouramd/nvim.git ~/.config/nvim/
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim
```

