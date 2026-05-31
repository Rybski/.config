return {
	"folke/which-key.nvim",
	lazy = true,
	cmd = "WhichKey",
	event = "VeryLazy",
	opts = {},
	keys = {
		{ "<leader>?", "<cmd>WhichKey<cr>", desc="Open which key" },
	},
	dependencies = {},
}
