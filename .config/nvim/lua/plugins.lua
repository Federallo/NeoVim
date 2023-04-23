local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	'nvim-tree/nvim-web-devicons',
	'goolord/alpha-nvim',--main menu
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',--finder
	'akinsho/bufferline.nvim',--tabs
	tag = "v3.*",
	'nvim-tree/nvim-tree.lua',--tree files
	'ellisonleao/gruvbox.nvim',--theme
	'nvim-lualine/lualine.nvim'--statusline
  })

--setting theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
