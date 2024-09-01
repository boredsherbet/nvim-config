# Neovim Configuration

This repository contains my personal Neovim configuration, which is heavily based on [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). Approximately 98% of the config is modularized from Kickstart.nvim, with some minor customizations, including additional plugins, settings, and functions for faster coding.

## Plugins

Here are the plugins included in this setup, along with a brief explanation of what each does:

- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs): Automatically closes brackets, parentheses, and quotes.
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim): Displays available keybindings in a popup.
- [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth): Automatically detects and sets buffer indentation settings.
- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint): Asynchronous linting for Neovim.
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting and code structure parsing using Treesitter.
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim): Highlights and searches for TODO comments in your code.
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): Fuzzy finder and highly extendable picker interface.
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim): File explorer for Neovim.
- [echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim): Collection of minimal and fast Lua modules for Neovim.
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): A blazing fast and easy-to-configure Neovim statusline.
- [folke/lazydev.nvim](https://github.com/folke/lazydev.nvim): Tools for speeding up Neovim plugin development.
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Quickstart configurations for the Neovim LSP client.
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim): Portable package manager for Neovim that handles LSP servers, DAP servers, linters, and formatters.
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Adds indentation guides to all lines.
- [catppuccin/nvim](https://github.com/catppuccin/nvim): A soothing pastel theme for Neovim.
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim): Git integration for buffers, showing changes, hunks, and more.

## Dependencies

These plugins are dependencies for some of the above plugins:

- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp): A completion plugin for Neovim.
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim): Useful Lua functions used by lots of plugins.
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim): UI picker for Neovim’s built-in `vim.ui.select`.
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): Adds file type icons to Neovim plugins.
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim): FZF sorter for Telescope.
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim): UI component library for Neovim.
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim): Bridges the gap between `mason.nvim` and `nvim-lspconfig`.
- [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim): Automatically installs tools with Mason.
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim): Standalone UI for LSP progress.
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): LSP source for nvim-cmp.
- [Bilal2453/luvit-meta](https://github.com/Bilal2453/luvit-meta): Meta-programming library for Neovim and Luvit projects.

## Usage

To get started with this configuration on a new device (Linux or Windows), clone the repository and set it up with the following command:

```sh
git clone https://github.com/boredsherbet/nvim-config ~/.config/nvim
```

Then open nvim and lazy.nvim does everything for you.

## Additional Notes

 - There is currently no debugger built into this setup.
 - I'm still learning how to use all of this and making infrequent changes. Expect this configuration to evolve over time.
 - The configuration includes some custom vim options and quick functions in templates.lua that I use for faster coding, like simple macros (or whatever you call them).
 - Again, pretty much all of this is based on kickstart.nvim (it's genuinely amazing)
 - I also learned a lot from [this playlist](https://youtu.be/zHTeCSVAFNY?si=CtjxUIvCWlhQxalQ) by typecraft. he's pretty awesome.
