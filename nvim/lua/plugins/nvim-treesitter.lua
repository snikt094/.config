return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {"c", "vim", "vimdoc", "query", "lua", "python", "r", "markdown", "markdown_inline", "rnoweb", "yaml"},
                ignore_install = {"latex"},
                sync_install = false,
                auto_install = true, 
                highlight = { enable = true },

                incremental_selection = {
                    enable = false,
                    keymaps = {
                        init_selection = "<Leader>s", -- set to `false` to disable one of the mappings
                        node_incremental = "<Leader>k",
                        scope_incremental = "<Leader>l",
                        node_decremental = "<Leader>j",
                    },
                },
            })
        end,
    }
}
