local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    print("nvim-treesitter not found!")
end

treesitter.setup({
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "cmake",
        "make",
        "json",
        "html",
        "markdown",
        "bash",
        "lua",
        "vim",
    },
    -- 启用基于 Treesitter 的代码格式化(=)
    indent = { enable = true },
    -- 启用代码高亮模块
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    --启用增量选择
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<TAB>",
        },
    },

    -- 彩色括号 nvim-ts-rainbow
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        colors = {
            "#95ca60",
            "#ee6985",
            "#D6A760",
            "#7794f4",
            "#b38bf5",
            "#7cc7fe",
        }, -- table of hex strings
        -- termcolors = { } -- table of colour name strings
    },
    -- auto install above language parsers
    auto_install = true,
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
})

-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
