return { 
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        config = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
            vim.g.tex_flavor = 'latex'
--            vim.g.vimtex_quickfix_mode = 0
            vim.g.syntax_conceal_disable = 1
        end,
    }
}

