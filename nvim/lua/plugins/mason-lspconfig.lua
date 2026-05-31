return {
    	"mason-org/mason-lspconfig.nvim",
	lazy = true,
	event = {"BufReadPre", "BufNewFile"},
	cmd = {},
	opts = {},
	keys = {},
    	dependencies = {
        	{ "mason-org/mason.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
   	},
}
