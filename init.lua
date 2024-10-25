-- stolen from Jiedong Hao
-- https://github.com/jdhao/nvim-config/blob/main/init.lua

vim.loader.enable()

local utils = require("utils")

local expected_version = "0.10.2"
utils.is_compatible_version(expected_version)

local config_dir = vim.fn.stdpath("config")

-- some global settings
require("globals")
-- setting options in nvim
vim.cmd("source " .. vim.fs.joinpath(config_dir, "viml_conf/options.vim"))

-- package manager
require("config.lazy")

-- all the user-defined mappings
require("mappings")

-- colorscheme
vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin-frappe"

-- treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})

-- lsp
require'lspconfig'.pyright.setup{}

-- mini
require('mini.pairs').setup()
require('mini.ai').setup()
require('mini.surround').setup() -- TODO check bindings

-- lualine
require('lualine').setup()

-- indent blankline
require("ibl").setup()

-- telescope
require('telescope').setup {
  extensions = {
    fzf = {}
  }
}
require('telescope').load_extension('fzf')
