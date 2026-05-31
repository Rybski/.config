return {
	"echasnovski/mini.extra",
	lazy = true,
	cmd = {},
	opts = {},
	keys = {
		{ "<leader>dm", "<cmd>lua MiniExtra.pickers.diagnostic({scope='all'})<cr>" , mode={"n"} , desc="Open Project Diagnostics (Mini)" },
		{ "<leader>dn", "<cmd>lua MiniExtra.pickers.diagnostic({scope='current'})<cr>" , mode={"n"} , desc="Open File Diagnostics (Mini)" },
		{ "<leader>p", "<cmd>lua MiniExtra.pickers.hipatterns()<cr>" , mode={"n"} , desc="Open patterns" },
		{ "<leader>g", "<cmd>lua MiniExtra.pickers.git_files({scope='modified'})", move={"n"}, desc="Git"},
	},
	dependencies = {
		"echasnovski/mini.pick",
		"echasnovski/mini.hipatterns",
	},
}
