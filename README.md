# welli7ngton's LunarVim Settings

This repository contains my custom configurations for [LunarVim](https://www.lunarvim.org/blog), a Neovim-based IDE that focuses on providing a clean and efficient development environment.

## Overview
This setup includes several customized settings, plugins, keymaps, and options that enhance the development experience, particularly for languages like Lua, Python, Java and frameworks like Robot Framework.

## Configs structure
```bash
~/.configs/lvim/
```

├── config.lua                    # entrypoint for lunarvim configs

├── lua

│   └── welli7ngton

│       ├── autocmds.lua          # Custom auto commands

│       ├── banners.lua           # Banner settings for the dashboard

│       ├── colorscheme.lua       # Custom color scheme settings

│       ├── dashboard.lua         # Dashboard configuration

│       ├── filetype.lua          # File type specific configurations

│       ├── general_lsp.lua       # general lsp configs

│       ├── keymaps.lua           # Custom key mappings

│       ├── kind.lua              # Code completion and snippets

│       ├── options.lua           # Editor options and settings

│       ├── plugins.lua           # Plugin management and installation

│       ├── rose-pine-setup.lua   # rose pine theme configs

│       ├── statusline.lua        # Custom statusline settings

│       └── which-key.lua         # Configurations for which-key plugin

└── snippets                      # snippets      

## installation
### To use this configuration with your LunarVim setup, follow these steps:

- Clone this repository into your LunarVim configuration directory:

```bash
git clone https://github.com/welli7ngton/lunarvim-setup.git ~/.config/lvim/
```

- Install the required plugins:

```bash
:LvimSync
```

- Restart LunarVim to apply the changes.

## Dependencies

Ensure that you have the following dependencies installed:

- LunarVim: Install from the official [LunarVim](https://www.lunarvim.org/docs/installation) site.
- Neovim v0.9.0+ : LunarVim requires [Neovim](https://github.com/neovim/neovim/releases/tag/v0.10.1) version 0.9.0+ or higher.
