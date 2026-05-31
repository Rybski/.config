return {
	"stevearc/oil.nvim",
	lazy = true,
	cmd = "Oil",
	opts = {
		skip_confirm_for_simple_edits = "true",
		-- open_preview= true,
		constrain_cursor = "name",
		watch_for_changes = true,
		keymaps = {
			["<Esc>"] = "actions.close",
			["."] = "actions.toggle_hidden",
		},
	},
	keys = {
		{ "<leader>o", "<cmd>Oil<cr>", desc="Open file explorer" },
	},
	dependencies = {
		{ "echasnovski/mini.icons", opts={} },
		-- { "SirZenith/oil-vcs-status", opts={} }, need to add column for it and test it
	},
}
