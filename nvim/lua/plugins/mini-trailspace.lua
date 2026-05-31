return {
	"echasnovski/mini.trailspace",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	cmd = {},
	opts = {},
	keys = {
		{ "<leader>s", "<cmd>lua MiniTrailspace.trim()<cr>", desc="Trim Trailspaces"},
	},
	dependencies = {},
}
