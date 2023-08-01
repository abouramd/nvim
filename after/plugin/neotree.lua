vim.keymap.set("n", "<leader>n", vim.cmd.Neotree)


    require("neo-tree").setup({
        source_selector = {
            winbar = true,
            statusline = flase
        }
    })
