-- [[
--  Plugin Installation File
--  Install plugins here, light configuration is OK.
--  For complex configuration or dependencies, create a plugin file like so:
--  config-pluginname.lua
--  in this directory.
-- ]] --

return {
	-- Colorscheming
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
	},

	-- Vim Fugitive
	{ "tpope/vim-fugitive" },

	--  Linux Coding Style
	{ "gregkh/kernel-coding-style" },

	-- Lualine Statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Blankline for indentation
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	-- Telescope (fuzzy searcher)
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},

	-- TreeSitter (parser and syntax gen tool)
	{
		"romus204/tree-sitter-manager.nvim",
	},

	-- NVIM-tree (NERDTree but neovim)
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
	},

	-- Mason LSP Configuration
	{
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	
	-- Octo Plugin (Github)
	{
	  "pwntester/octo.nvim",
	  cmd = "Octo",
	  opts = {
		picker = "telescope",
		-- bare Octo command opens picker of commands
		enable_builtin = true,
	  },
	  dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons", -- optional if file_panel.icons is a function
	  },
	},
}
