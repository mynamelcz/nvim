local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
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

dashboard.section.header.val = {
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
dashboard.section.header.val = {
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

dashboard.section.footer.val = {
	"",
	"",
	"Neovim Lucz",
}

local nvim_path = vim.fn.stdpath("config")
dashboard.section.buttons.val = {

	-- dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	-- dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	-- dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	-- dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	-- dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	-- dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	-- dashboard.button("q", "  Quit Neovim", ":qa<CR>"),

	dashboard.button("1", "  Projects", ":Telescope persisted<CR>"),
	dashboard.button("2", "  Recently opened files", ":Telescope oldfiles <CR>"),
	dashboard.button("3", "  Find File", ":Telescope find_files <CR>"),
	dashboard.button("4", "  Find Word", ":Telescope live_grep <CR>"),
	dashboard.button("5", "  Edit init", ":edit " .. nvim_path .. "/init.lua <CR>"),
	dashboard.button("6", "  Edit Optoion", ":edit " .. nvim_path .. "/lua/core/options.lua <CR>"),
	dashboard.button("7", "  Edit Keymaps", ":edit " .. nvim_path .. "/lua/core/keymaps.lua <CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
