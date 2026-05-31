return {
	"echasnovski/mini.hipatterns",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	cmd = {},
	opts = {},
	keys = {},
	dependencies = {},
	config = {
		highlighters = {
			-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE', 'BUG', 'WARN;
			-- fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
			fixme = { pattern = '%f[%w]()[Ff][Ii][Xx][Mm][Ee]()%f[%W]', group = 'MiniHipatternsFixme' },
			hack  = { pattern = '%f[%w]()[Hh][Aa][Cc][Kk]()%f[%W]',  group = 'MiniHipatternsHack'  },
			todo  = { pattern = '%f[%w]()[Tt][Oo][Dd][Oo]()%f[%W]',  group = 'MiniHipatternsTodo'  },
			note  = { pattern = '%f[%w]()[Nn][Oo][Tt][Ee]()%f[%W]',  group = 'MiniHipatternsNote'  },
			bug   = { pattern = '%f[%w]()[Bb][Uu][Gg]()%f[%W]',      group = 'MiniHipatternsFixme' },
    			warn  = { pattern = '%f[%w]()[Ww][Aa][Rr][Nn]()%f[%W]',  group = 'MiniHipatternsHack'  },
			-- Highlight hex color strings (`#rrggbb`) using that color
			hex_color = 'MiniHipatterns.gen_highlighter.hex_color()',
		},
		delay = {
			text_change = 200,
			scroll = 50,
		},
  	},
}
