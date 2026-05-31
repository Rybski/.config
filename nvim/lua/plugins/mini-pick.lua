return {
	"echasnovski/mini.pick",
	lazy = true,
	cmd = {},
	opts = {},
	keys = {
		{ "<leader>b", "<cmd>lua MiniPick.builtin.buffers()<cr>" , mode={"n"} , desc="Open buffer explorer" },
		{ "<leader>f", "<cmd>lua MiniPick.builtin.grep_live()<cr>" , mode={"n"} , desc="Open search" },
	},
	dependencies = {
		{ "echasnovski/mini.icons", opts={} },
	},
}
