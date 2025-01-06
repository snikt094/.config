return { 
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        enabled = false, 
        config = function()
            vim.g.tex_flavor = 'latex'
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_quickfix_mode = 0
            vim.g.tex_conceal = 'abdmgs'

            vim.opt.conceallevel = 1
        end,
    }
}

