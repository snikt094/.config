return {
    {
        "sirver/ultisnips",
        lazy = false,
        enabled = true, 
        config = function()
            vim.g.UltiSnipsExpandTrigger = "<CR>"
            vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
            vim.g.UltiSnipsJumpBackwardTrigger = "<c-s>"
            vim.g.UltisnipsSnippetStorageDirectoryForUltiSnipsEdit = "~/.config/nvim/UltiSnips"
        end
    }
}

