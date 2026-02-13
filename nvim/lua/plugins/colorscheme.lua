return {
	dir = vim.fn.stdpath("config") .. "/colors",
	name = "0x96f",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("0x96f")
	end,
}
