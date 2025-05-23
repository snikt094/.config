return {
    {
        "hrsh7th/nvim-cmp",
        enabled = false, 
        requires = {
            "quangnguyen30192/cmp-nvim-ultisnips",
            config = function()
                -- optional call to setup (see customization section)
                -- require("cmp_nvim_ultisnips").setup{}
            end,
            -- If you want to enable filetype detection based on treesitter:
            --requires = { "nvim-treesitter/nvim-treesitter" },
        },

        config = function()
            local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
            require("cmp").setup({
                snippet = {
                    expand = function(args)
                        vim.fn["UltiSnips#Anon"](args.body)
                    end,
                },
                sources = {
                    { name = "ultisnips" },
                    -- more sources
                },
                -- recommended configuration for <Tab> people:
                mapping = {
                    ["<Tab>"] = cmp.mapping(
                    function(fallback)
                        cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
                    end,
                    { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
                    ),
                    ["<S-Tab>"] = cmp.mapping(
                    function(fallback)
                        cmp_ultisnips_mappings.jump_backwards(fallback)
                    end,
                    { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
                    ),
                },
            })
        end,
    }
}
