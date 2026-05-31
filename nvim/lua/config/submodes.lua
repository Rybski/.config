local submode = require("submode")

submode.create("WinMove", {
	mode = "n",
	enter = "<C-w>",
	leave = { "q", "<ESC>" },
})
submode.set("WinMove", "h", "<C-w>h")
submode.set("WinMove", "j", "<C-w>j")
submode.set("WinMove", "k", "<C-w>k")
submode.set("WinMove", "l", "<C-w>l")
