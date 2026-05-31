if true then return {} end

return {
	"pogyomo/submode.nvim",
	lazy = true,
	cmd = "Submode",
	opts = {},
	keys = {
		{ "<leader>s", "<cmd>Submode<cr>", desc="Enter Submode" },
	},
	dependencies = {},
	config = function()
		-- local winmove = require("submode")
		-- winmove.create("WinMove", {
		-- 	mode = "n",
		-- 	enter = "<C-w>",
		-- 	leave = { "q", "<ESC>" },
		-- 	default = function(register)
		-- 		register("h", "<C-w>h")
		-- 		register("j", "<C-w>j")
		-- 		register("k", "<C-w>k")
		-- 		register("l", "<C-w>l")
		-- 	end
		-- })

		local textlinemove = require("submode")
		textlinemove.create("TextLineMove", {
			mode = "n",
			enter = { "<leader>h", "<leader>j", "<leader>k", "<leader>l"},
			leave = { "q", "<ESC>" },
			default = function(register)
				register("h", "<cmd>lua MiniMove.move_line('left')<cr>")
				register("j", "<cmd>lua MiniMove.move_line('down')<cr>")
				register("k", "<cmd>lua MiniMove.move_line('up')<cr>")
				register("l", "<cmd>lua MiniMove.move_line('right')<cr>")
			end
		})
	end,
}
