return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {"c", "vim", "vimdoc", "query", "lua", "python", "r", "markdown", "markdown_inline", "rnoweb", "yaml", "html", "latex", "bash", "java"},  
                sync_install = false,
                auto_install = true, 
                indent = false,
                highlight = { 
                    enable = true, 
                    disable = {"latex"}, -- So that vimtex can work for tex files and syntax latex works in md files.
                },
             


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
