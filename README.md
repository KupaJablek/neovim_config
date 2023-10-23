# My config
My minimalist neovim configuration

## Requirements

1. [neovim](https://github.com/neovim/neovim) > v0.09.0

2. [ripgrep](https://github.com/BurntSushi/ripgrep)

3. [sharkdp/fd](https://github.com/sharkdp/fd)

4. Terminal using a [Nerdfont](https://www.nerdfonts.com/)

Potentially vim-gtk or similar

## Installation

Clone this repo to **~/.config/nvim**
> git clone https://github.com/KupaJablek/nvim.git ~/.config/nvim/

Open neovim and wait for everything to install then close and re-open.

## Configuration and Keymaps

Generic remaps can be found in **/lua/base/mapping.lua**

Each plugin is configured and remapped in it's own file in **/after/plugin/plugin.lua**
