return {
	dir = vim.fn.stdpath("config") .. "/colors",
	name = "Apple-System-Colors",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("Apple-System-Colors")
	end,
}
