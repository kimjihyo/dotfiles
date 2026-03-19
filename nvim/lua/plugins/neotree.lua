return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		{
			"s1n7ax/nvim-window-picker",
			version = "2.*",
			opts = {
				hint = "floating-big-letter",
				filter_rules = {
					autoselect_one = true,
					bo = {
						filetype = { "neo-tree", "neo-tree-popup", "notify" },
						buftype = { "terminal", "quickfix" },
					},
				},
			},
		},
	},
	opts = {
		open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
		window = {
			mappings = {
				["<cr>"] = "open_with_window_picker",
				["s"] = "vsplit_with_window_picker",
				["S"] = "split_with_window_picker",
			},
		},
		filesystem = {
			use_libuv_file_watcher = true,
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					-- '.git',
					-- '.DS_Store',
					-- 'thumbs.db',
				},
				never_show = {},
			},
		},
	},
}
