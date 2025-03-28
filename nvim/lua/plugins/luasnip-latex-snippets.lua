return {
    {
        "iurimateus/luasnip-latex-snippets.nvim",
        lazy = false, 
        enabled = false, 
        dependencies = {"L3MON4D3/LuaSnip"},
        config = function()
            require('luasnip-latex-snippets').setup{
                use_treesitter = true, 
                allow_on_markdown = true, 
            } 
        end,
    }
}
