return {
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        keys = {
           {
              "<leader>tt",
              "<cmd>Trouble diagnostics toggle<cr>",
              desc = "Diagnostics (Trouble)",
            },
        },
        config = function()
            require("trouble").setup({ })
        end
    }
}
