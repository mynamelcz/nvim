local status_ok, db = pcall(require, "dashboard")
if not status_ok then
	print("dashboard not found!")
	return
end
db.custom_header = {
	"   ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ ",
	" ⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ",
	" ⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ",
	" ⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ",
	" ⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ",
	" ⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ",
	" ⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ",
	" ⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ",
	" ⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ",
	" ⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    ",
}

db.custom_header = {
	[[]],
	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}
db.custom_header = {
	[[                              ▉▉▉▉▉▉▉▉▉▉▉                                                                          ]],
	[[                            ▉▉▉▉▉▉▉▉▉▉▉                                                                            ]],
	[[                          ▉▉▉▉▉▉▉▉▉▉▉                                                                              ]],
	[[        ▉▉▉▉▉▉▉▉▉▉      ▉▉▉▉▉▉▉▉▉▉▉                                                                                ]],
	[[         ▉▉▉▉▉▉       ▉▉▉▉▉▉▉▉▉▉▉                                                                                  ]],
	[[          ▉▉▉▉▉▉    ▉▉▉▉▉▉▉▉▉▉                                                                                     ]],
	[[           ▉▉▉▉▉▉ ▉▉▉▉▉▉▉▉▉                                                                                        ]],
	[[             ▉▉ ▉▉▉▉▉▉▉▉▉    ▉▉▉▉▉▉                                                                                ]],
	[[               ▉▉▉▉▉▉▉      ▉▉▉▉▉▉                                                                                 ]],
	[[             ▉▉▉▉▉▉▉       ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉     ▉▉▉▉▉▉▉▉▉▉▉▉▉    ▉▉▉▉▉▉▉▉▉▉▉   ▉▉▉▉▉▉▉▉▉▉▉▉    ▉▉▉▉▉▉▉▉▉▉▉▉▉        ]],
	[[           ▉▉▉▉▉▉▉  ▉▉▉   ▉▉▉▉▉▉     ▉▉▉▉▉▉  ▉▉▉▉▉     ▉▉▉▉▉▉  ▉▉▉▉▉▉      ▉▉▉▉▉▉           ▉▉▉▉▉     ▉▉▉▉▉        ]],
	[[         ▉▉▉▉▉▉▉  ▉▉▉▉▉▉  ▉▉▉▉▉     ▉▉▉▉▉▉  ▉▉▉▉▉     ▉▉▉▉▉▉  ▉▉▉▉▉▉      ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉  ▉▉▉▉▉▉    ▉▉▉▉▉▉        ]],
	[[       ▉▉▉▉▉▉▉     ▉▉▉▉▉▉▉▉▉▉▉▉    ▉▉▉▉▉▉  ▉▉▉▉▉▉    ▉▉▉▉▉▉  ▉▉▉▉▉▉       ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉ ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉         ]],
	[[     ▉▉▉▉▉▉          ▉▉▉▉▉▉▉▉▉    ▉▉▉▉▉▉  ▉▉▉▉▉▉    ▉▉▉▉▉▉  ▉▉▉▉▉▉                ▉▉▉▉▉▉ ▉▉▉▉▉▉                    ]],
	[[   ▉▉▉▉▉              ▉▉▉▉▉▉▉    ▉▉▉▉▉▉   ▉▉▉▉▉▉▉▉▉▉▉▉▉▉    ▉▉▉▉▉       ▉▉▉▉▉▉▉▉▉▉▉▉▉▉   ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉           ]],
	[[                                                                                                                   ]],
	[[                                                                                                                   ]],
}

db.custom_footer = {
	"",
	"",
	"Neovim Lucz",
}

local nvim_path = vim.fn.stdpath("config")
db.custom_center = {
	{
		icon = "  ",
		desc = "Recently opened files       ",
		shortcut = "Leader f r",
		action = "Telescope oldfiles",
	},
	{
		icon = "  ",
		desc = "Projects                    ",
		shortcut = "Leader f p",
		action = "Telescope projects",
	},
	{
		icon = "  ",
		desc = "Find File                   ",
		shortcut = "Leader f f",
		action = "Telescope find_files",
	},
	{
		icon = "  ",
		desc = "Find Word                   ",
		shortcut = "Leader f s",
		action = "Telescope live_grep",
	},
	{
		icon = "  ",
		desc = "Edit init                   ",
		shortcut = "None      ",
		action = "edit " .. nvim_path .. "/lua/init.lua",
	},
	{
		icon = "  ",
		desc = "Edit Optoion                ",
		shortcut = "None      ",
		action = "edit " .. nvim_path .. "/lua/core/options.lua",
	},
	{
		icon = "  ",
		desc = "Edit Keymaps                ",
		shortcut = "None      ",
		action = "edit " .. nvim_path .. "/lua/core/keymaps.lua",
	},
}
