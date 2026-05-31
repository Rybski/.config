return {
	"neovim/nvim-lspconfig",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	cmd = {},
	fmt = {
		".rs",
		".py",
		".c",
		".cpp",
		".lua",
	},
	opts = {
		servers = {
		}
		-- vim.lsp.config('rust_analyzer', {
		-- 	-- Server-specific settings. See `:help lsp-quickstart`
		-- 	settings = {
		-- 		['rust-analyzer'] = {},
		-- 	},
		-- })
	},
	config = function()
		-- 1. Setup capabilities for completion/snippets
		-- This is where you connect Neovim's LSP client to blink.cmp's capabilities.
		-- This *needs* to be run here so LSP starts with the right info,
		-- but it does *not* force the completion plugins to load until InsertEnter.
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		local cmp_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
		if cmp_ok then
			capabilities = vim.tbl_deep_extend(
				"force",
				capabilities,
				cmp_lsp.default_capabilities()
			)
		end

		-- 2. Setup a common handler for ALL Mason-installed LSPs
		-- This is the function that runs when mason-lspconfig sees a server is installed.
		-- It uses the new native Neovim API: vim.lsp.config()
		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = {}, -- Define your list of LSPs to install here (e.g., { "pyright", "lua_ls" })
			handlers = {
				-- The default handler is a function that runs for every server
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						-- Add any global settings for all LSPs here
					})
				end,

				-- You can override the default for a specific server (e.g., 'lua_ls') here
				-- ['lua_ls'] = function()
				--   require('lspconfig').lua_ls.setup({
				--     capabilities = capabilities,
				--     settings = { ... }
				--   })
				-- end,
			},
		})
	end,
	keys = {},
	dependencies = {
		"nvimtools/none-ls.nvim",
	},
}
