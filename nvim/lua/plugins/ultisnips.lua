return {
    {
        "sirver/ultisnips",
        lazy = false,
        enabled = false, 
        config = function()
            vim.g.UltiSnipsExpandTrigger = "<tab>"
            vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
            vim.g.UltiSnipsJumpBackwardTrigger = "<c-tab>"
            vim.g.UltisnipsSnippetStorageDirectoryForUltiSnipsEdit = "~/.config/nvim/UltiSnips"
        end
    }
}

