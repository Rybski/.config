
return {
	"echasnovski/mini.comment",
	lazy = true,
	cmd = {},
	opts = {},
	keys = {
		{ "<leader>/", "<cmd>lua MiniComment.toggle_lines(vim.fn.line('.'),vim.fn.line('.'))<cr>", mode={"n"}, desc="Comment line" },
		{ "<leader>/", function()
			local a = tonumber(vim.fn.getpos('v')[2])
			local b = tonumber(vim.fn.getpos('.')[2])
			local fline = (a < b) and a or b
			local lline = (a > b) and a or b
			MiniComment.toggle_lines(fline, lline)
			end, mode={"v"}, desc="Comment lines" },
	},
	dependencies = {},
}
