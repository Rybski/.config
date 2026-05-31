return {
	"folke/trouble.nvim",
	lazy = true,
	cmd = "Trouble",
	opts = {
		warn_no_results = false,
		open_no_results  = true,
		height = 10,
		modes = {
    			diagnostics = {
    				win = { position = "bottom", size = 10 }, -- consistent compact layout
    			},
		},
	},
	keys = {
		{ "<leader>dd", "<cmd>Trouble diagnostics toggle focus=True filter.buf=0<cr>", desc="Open Local Diagnostics (Trouble)" },
		{ "<leader>dp", "<cmd>Trouble diagnostics toggle focus=True<cr>", desc="Open Project Diagnostics (Trouble)" },
	},
	dependencies = {
		{ "echasnovski/mini.icons", opts={} },
	},
}
