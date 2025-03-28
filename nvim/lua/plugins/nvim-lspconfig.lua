return {
    {
        'neovim/nvim-lspconfig',
        enabled = false, 
        lazy = true, 
        config = function()
            require('lspconfig').texlab.setup{}
        end 
    }
}
