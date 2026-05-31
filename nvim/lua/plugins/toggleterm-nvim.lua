return {
	"akinsho/toggleterm.nvim",
	lazy = true,
	cmd = "ToggleTerm",
	opts = {
	},
	keys = {
		{ "<leader>t", "<cmd>ToggleTerm<cr>", desc="Open Terminal "},
		{ "<Esc>", "<cmd>ToggleTerm<cr>", mode={"t"}, desc="Close Terminal" },
	},
	dependencies = {},
}
