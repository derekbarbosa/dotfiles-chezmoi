require("dbarbosa.configs.lsp")

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"bashls",
		"dockerls",
		"jsonls",
		"lua_ls",
		"marksman",
		"yamlls",
	},

	--clangd = {},

	automatic_enable = true,
})


-- Setup LSP Attachment keybinds here
local augroup = vim.api.nvim_create_augroup
local dbarbosa = augroup('dbarbosa', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
	group = dbarbosa,
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts, { desc = 'goto declaration' })
		vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, { desc = 'goto definition' })
		vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts, { desc = 'goto implementation' })
		vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts, { desc = 'show references' })
		vim.keymap.set("n", "gy", function() vim.lsp.buf.type_definition() end, opts, { desc = 'goto typedef' })
		vim.keymap.set("n", "gn", function() vim.diagnostic.goto_next() end, opts, { desc = 'goto next diag' })
		vim.keymap.set("n", "gp", function() vim.diagnostic.goto_prev() end, opts, { desc = 'goto prev diag' })
		vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts, { desc = 'Show `hover` diag' })
		vim.keymap.set("n", "<leader>fmt", function() vim.lsp.buf.format() end, opts, { desc = 'format current code' })
		vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts, { desc = 'Open a query against current workspace symbols' })
		vim.keymap.set("n", "<leader>dl", function() vim.diagnostic.open_float(0, { scope = "line" }) end, opts, { desc = 'Open diagnostic buffer on current line' })
		vim.keymap.set("n", "<leader>do", function() vim.diagnostic.open_float(0, { scope = "cursor" }) end, opts, { desc = 'Open diagnostic buffer on cursor' })
		vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts, { desc = 'Perform Codeaction' })
		vim.keymap.set({ "n", "v" }, "<C-h>", function() vim.lsp.buf.signature_help() end, opts, { desc = 'Show current type signature' })
	end
})
