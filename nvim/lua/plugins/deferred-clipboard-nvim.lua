if true then return{} end

return {
	"EtiamNullam/deferred-clipboard.nvim",
	lazy = true,
	event = "VeryLazy",
	cmd = {},
	opts = {
		fallback = "xclip",
	},
	keys = {},
	dependencies = {},
}

