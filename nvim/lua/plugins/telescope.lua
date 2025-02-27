return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },


        config = function()
--            local actions = require("telescope.actions") don't need this for mappings can just use function as string for default actions (written in the docs)  
            require('telescope').setup {
                defaults = {
                        mappings = {    
                            i = {
                            --["<C-v>"] = actions.select_vertical, Both of these open the window either vertically to the right or horizontally under 
                            --["<C-d>"] = actions.select_horizontal,
                            ["<C-j>"] = "move_selection_next",
                            ["<C-k>"] = "move_selection_previous"
                        }, 
                    }, 
                },  

                pickers = {
                    find_files = {
                        theme = "ivy",
                    }
                },

                extensions = {
                    fzf = {}
                },

            }

            require('telescope').load_extension('fzf')

            vim.keymap.set("n", "<space>oh", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<space>of", require('telescope.builtin').find_files)


            vim.keymap.set("n", "<space>oc", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                }
            end)
            vim.keymap.set("n", "<space>fk", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
                }
            end)
            require "config.telescope.multigrep".setup()
        end
    }
}
