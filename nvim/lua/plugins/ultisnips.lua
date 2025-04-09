return {
    {
        "sirver/ultisnips",
        lazy = false,
        enabled = true, 
        config = function()
            vim.g.UltiSnipsExpandTrigger = "<Bslash>"
            vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
            --vim.g.UltiSnipsJumpBackwardTrigger = ""
            vim.g.UltisnipsSnippetStorageDirectoryForUltiSnipsEdit = "~/.config/nvim/UltiSnips"
        end
    }
}

