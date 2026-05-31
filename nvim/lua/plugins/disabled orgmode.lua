if true then return{} end

return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	cmd = "Org",
	ft = {'org'},
	opts = {},
	keys = {
		-- { "<leader>n", "<cmd><cr>", desc="Org..."},
		{ "<leader>nn", "<cmd>Org capture t<cr>", desc="Org note"},
		{ "<leader>na", "<cmd>Org agenda t<cr>", desc="Org agenda"},
		-- { "<leader>n", "<cmd><cr>", desc="Org..."},
	},
	dependencies = {},
	config = function()
		require('orgmode').setup({
			org_agenda_files = '~/Documents/org/**/**',
			org_default_notes_file = '~/Documents/org/refile.org',
			mappings = { disable_all=true },
		})
	end,
}
