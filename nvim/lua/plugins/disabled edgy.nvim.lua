if true then return {} end

return {
	"folke/edgy.nvim",
	lazy = true,
	event = "VeryLazy",
	cmd = {},
	init = function()
		-- vim.opt.laststatus = 3
		vim.opt.splitkeep = "screen"
	end,
	opts = {
		animate = {
			enabled = true,
			fps = 60,
		},
		exit_when_last = true,
		bottom = {
			ft = "ToggleTerm",
			size = { height=0.25},
			filter = function(buf, win)
				return vim.api.nvim_win_get_config(win).relative == ""
			end,
		},

	},
	keys = {
	},
	dependencies = {
	},
}
