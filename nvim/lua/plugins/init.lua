return {
    globals = {'vim'},
    'folke/tokyonight.nvim',
    {
        'rose-pine/neovim',
        name ='rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine');
            vim.cmd([[autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({higroup="IncSearch", timeout=50})]]);
        end

    },
    'nvim-lua/plenary.nvim',
    'mbbill/undotree',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    --'jbyuki/nabla.nvim' -- math linter
    -- note taking
    'simrat39/rust-tools.nvim',
    -- Debugging
    --'mfussenegger/nvim-dap'
    --'folke/zen-mode.nvim'

    --'ggandor/leap.nvim'
    --({
    --    "stevearc/oil.nvim",
    --    config = function()
    --    require("oil").setup()
    --    end,
    --}),
}
