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

	-- button("e", "  New file", "<cmd>ene <CR>"),
	-- button("SPC f f", "󰈞  Find file"),
	-- button("SPC f h", "󰊄  Recently opened files"),
	-- button("SPC f r", "  Frecency/MRU"),
	-- button("SPC f g", "󰈬  Find word"),
	-- button("SPC f m", "  Jump to bookmarks"),
	-- button("SPC s l", "  Open last session"),
	dashboard.button("1", "  Projects", ":Telescope persisted<CR>"),
	dashboard.button("2", "  Recently opened files", ":Telescope oldfiles <CR>"),
	dashboard.button("3", "  Find File", ":Telescope find_files <CR>"),
	dashboard.button("4", "󰈬  Find Word", ":Telescope live_grep <CR>"),
	dashboard.button("5", "  Edit init", ":edit " .. nvim_path .. "/init.lua <CR>"),
	dashboard.button("6", "  Edit Optoion", ":edit " .. nvim_path .. "/lua/core/options.lua <CR>"),
	dashboard.button("7", "  Edit Keymaps", ":edit " .. nvim_path .. "/lua/core/keymaps.lua <CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
